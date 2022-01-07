; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_insert_publ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_insert_publ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.publication = type { i32 }
%struct.name_seq = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"tipc_nametbl_insert_publ: {%u,%u,%u} found %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to publish illegal {%u,%u,%u}\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Publishing {%u,%u,%u} from 0x%x\0A\00", align 1
@table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"tipc_nametbl_insert_publ: created %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.publication* @tipc_nametbl_insert_publ(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.publication*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.name_seq*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.name_seq* @nametbl_find_seq(i32 %17)
  store %struct.name_seq* %18, %struct.name_seq** %16, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.name_seq*
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.name_seq*, %struct.name_seq** %16, align 8
  %25 = call i32 (i8*, %struct.name_seq*, ...) @dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.name_seq* %21, i32 %22, i32 %23, %struct.name_seq* %24)
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  store %struct.publication* null, %struct.publication** %8, align 8
  br label %67

34:                                               ; preds = %7
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.name_seq*
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 (i8*, %struct.name_seq*, ...) @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.name_seq* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.name_seq*, %struct.name_seq** %16, align 8
  %43 = icmp ne %struct.name_seq* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @hash(i32 %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call %struct.name_seq* @tipc_nameseq_create(i32 %45, i32* %49)
  store %struct.name_seq* %50, %struct.name_seq** %16, align 8
  %51 = load %struct.name_seq*, %struct.name_seq** %16, align 8
  %52 = call i32 (i8*, %struct.name_seq*, ...) @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.name_seq* %51)
  br label %53

53:                                               ; preds = %44, %34
  %54 = load %struct.name_seq*, %struct.name_seq** %16, align 8
  %55 = icmp ne %struct.name_seq* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store %struct.publication* null, %struct.publication** %8, align 8
  br label %67

57:                                               ; preds = %53
  %58 = load %struct.name_seq*, %struct.name_seq** %16, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call %struct.publication* @tipc_nameseq_insert_publ(%struct.name_seq* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store %struct.publication* %66, %struct.publication** %8, align 8
  br label %67

67:                                               ; preds = %57, %56, %29
  %68 = load %struct.publication*, %struct.publication** %8, align 8
  ret %struct.publication* %68
}

declare dso_local %struct.name_seq* @nametbl_find_seq(i32) #1

declare dso_local i32 @dbg(i8*, %struct.name_seq*, ...) #1

declare dso_local i32 @warn(i8*, i32, i32, i32) #1

declare dso_local %struct.name_seq* @tipc_nameseq_create(i32, i32*) #1

declare dso_local i64 @hash(i32) #1

declare dso_local %struct.publication* @tipc_nameseq_insert_publ(%struct.name_seq*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
