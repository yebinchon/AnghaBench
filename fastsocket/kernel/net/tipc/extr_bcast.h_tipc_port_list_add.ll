; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.h_tipc_port_list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.h_tipc_port_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_list = type { i32, i64*, %struct.port_list* }

@PLSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Incomplete multicast delivery, no memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_list*, i64)* @tipc_port_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_port_list_add(%struct.port_list* %0, i64 %1) #0 {
  %3 = alloca %struct.port_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.port_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.port_list* %0, %struct.port_list** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.port_list*, %struct.port_list** %3, align 8
  store %struct.port_list* %9, %struct.port_list** %5, align 8
  %10 = load i32, i32* @PLSIZE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.port_list*, %struct.port_list** %3, align 8
  %12 = getelementptr inbounds %struct.port_list, %struct.port_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %78, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PLSIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.port_list*, %struct.port_list** %5, align 8
  %27 = getelementptr inbounds %struct.port_list, %struct.port_list* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %85

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PLSIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.port_list*, %struct.port_list** %5, align 8
  %47 = getelementptr inbounds %struct.port_list, %struct.port_list* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %45, i64* %51, align 8
  %52 = load %struct.port_list*, %struct.port_list** %3, align 8
  %53 = getelementptr inbounds %struct.port_list, %struct.port_list* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %85

56:                                               ; preds = %40
  %57 = load %struct.port_list*, %struct.port_list** %5, align 8
  %58 = getelementptr inbounds %struct.port_list, %struct.port_list* %57, i32 0, i32 2
  %59 = load %struct.port_list*, %struct.port_list** %58, align 8
  %60 = icmp ne %struct.port_list* %59, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.port_list* @kmalloc(i32 24, i32 %62)
  %64 = load %struct.port_list*, %struct.port_list** %5, align 8
  %65 = getelementptr inbounds %struct.port_list, %struct.port_list* %64, i32 0, i32 2
  store %struct.port_list* %63, %struct.port_list** %65, align 8
  %66 = load %struct.port_list*, %struct.port_list** %5, align 8
  %67 = getelementptr inbounds %struct.port_list, %struct.port_list* %66, i32 0, i32 2
  %68 = load %struct.port_list*, %struct.port_list** %67, align 8
  %69 = icmp ne %struct.port_list* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %85

72:                                               ; preds = %61
  %73 = load %struct.port_list*, %struct.port_list** %5, align 8
  %74 = getelementptr inbounds %struct.port_list, %struct.port_list* %73, i32 0, i32 2
  %75 = load %struct.port_list*, %struct.port_list** %74, align 8
  %76 = getelementptr inbounds %struct.port_list, %struct.port_list* %75, i32 0, i32 2
  store %struct.port_list* null, %struct.port_list** %76, align 8
  br label %77

77:                                               ; preds = %72, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.port_list*, %struct.port_list** %5, align 8
  %83 = getelementptr inbounds %struct.port_list, %struct.port_list* %82, i32 0, i32 2
  %84 = load %struct.port_list*, %struct.port_list** %83, align 8
  store %struct.port_list* %84, %struct.port_list** %5, align 8
  br label %14

85:                                               ; preds = %70, %44, %35
  ret void
}

declare dso_local %struct.port_list* @kmalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
