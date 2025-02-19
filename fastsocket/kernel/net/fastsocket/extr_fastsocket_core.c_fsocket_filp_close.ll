; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_filp_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_filp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file*, %struct.file* }

@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Close file 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Close sub file 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Close old file 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fsocket_filp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsocket_filp_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 1
  %8 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %8, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %4, align 8
  %12 = load i32, i32* @DEBUG, align 4
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = call i32 @DPRINTK(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.file* %13)
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = call i32 @__fsocket_filp_close(%struct.file* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.file*, %struct.file** %3, align 8
  %18 = icmp ne %struct.file* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @DEBUG, align 4
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = call i32 @DPRINTK(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.file* %24)
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = call i32 @__fsocket_filp_close(%struct.file* %26)
  br label %28

28:                                               ; preds = %22, %19, %1
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = icmp ne %struct.file* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @DEBUG, align 4
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = call i32 @DPRINTK(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.file* %36)
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = call i32 @__fsocket_filp_close(%struct.file* %38)
  br label %40

40:                                               ; preds = %34, %31, %28
  ret i32 0
}

declare dso_local i32 @DPRINTK(i32, i8*, %struct.file*) #1

declare dso_local i32 @__fsocket_filp_close(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
