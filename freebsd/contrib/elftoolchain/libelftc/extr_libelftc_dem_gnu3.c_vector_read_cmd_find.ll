; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_vector_read_cmd_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_vector_read_cmd_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_cmd_item = type { i32 }
%struct.vector_read_cmd = type { %struct.read_cmd_item*, i64 }

@READ_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.read_cmd_item* (%struct.vector_read_cmd*, i32)* @vector_read_cmd_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.read_cmd_item* @vector_read_cmd_find(%struct.vector_read_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.read_cmd_item*, align 8
  %4 = alloca %struct.vector_read_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vector_read_cmd* %0, %struct.vector_read_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %4, align 8
  %8 = icmp eq %struct.vector_read_cmd* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @READ_FAIL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store %struct.read_cmd_item* null, %struct.read_cmd_item** %3, align 8
  br label %46

14:                                               ; preds = %9
  %15 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %42, %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %24, i32 0, i32 0
  %26 = load %struct.read_cmd_item*, %struct.read_cmd_item** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %26, i64 %28
  %30 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %35, i32 0, i32 0
  %37 = load %struct.read_cmd_item*, %struct.read_cmd_item** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %37, i64 %39
  store %struct.read_cmd_item* %40, %struct.read_cmd_item** %3, align 8
  br label %46

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %20

45:                                               ; preds = %20
  store %struct.read_cmd_item* null, %struct.read_cmd_item** %3, align 8
  br label %46

46:                                               ; preds = %45, %34, %13
  %47 = load %struct.read_cmd_item*, %struct.read_cmd_item** %3, align 8
  ret %struct.read_cmd_item* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
