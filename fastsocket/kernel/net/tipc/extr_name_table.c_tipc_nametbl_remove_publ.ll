; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_remove_publ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_remove_publ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.publication = type { i32 }
%struct.name_seq = type { %struct.name_seq*, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Withdrawing {%u,%u} from 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.publication* @tipc_nametbl_remove_publ(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.publication*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.publication*, align 8
  %13 = alloca %struct.name_seq*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.name_seq* @nametbl_find_seq(i32 %14)
  store %struct.name_seq* %15, %struct.name_seq** %13, align 8
  %16 = load %struct.name_seq*, %struct.name_seq** %13, align 8
  %17 = icmp ne %struct.name_seq* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.publication* null, %struct.publication** %6, align 8
  br label %51

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  %24 = load %struct.name_seq*, %struct.name_seq** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.publication* @tipc_nameseq_remove_publ(%struct.name_seq* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.publication* %29, %struct.publication** %12, align 8
  %30 = load %struct.name_seq*, %struct.name_seq** %13, align 8
  %31 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %19
  %35 = load %struct.name_seq*, %struct.name_seq** %13, align 8
  %36 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %35, i32 0, i32 2
  %37 = call i64 @list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.name_seq*, %struct.name_seq** %13, align 8
  %41 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %40, i32 0, i32 1
  %42 = call i32 @hlist_del_init(i32* %41)
  %43 = load %struct.name_seq*, %struct.name_seq** %13, align 8
  %44 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %43, i32 0, i32 0
  %45 = load %struct.name_seq*, %struct.name_seq** %44, align 8
  %46 = call i32 @kfree(%struct.name_seq* %45)
  %47 = load %struct.name_seq*, %struct.name_seq** %13, align 8
  %48 = call i32 @kfree(%struct.name_seq* %47)
  br label %49

49:                                               ; preds = %39, %34, %19
  %50 = load %struct.publication*, %struct.publication** %12, align 8
  store %struct.publication* %50, %struct.publication** %6, align 8
  br label %51

51:                                               ; preds = %49, %18
  %52 = load %struct.publication*, %struct.publication** %6, align 8
  ret %struct.publication* %52
}

declare dso_local %struct.name_seq* @nametbl_find_seq(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local %struct.publication* @tipc_nameseq_remove_publ(%struct.name_seq*, i32, i32, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.name_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
