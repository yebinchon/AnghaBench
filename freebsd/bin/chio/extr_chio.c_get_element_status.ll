; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_get_element_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_get_element_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_element_status = type { i32 }
%struct.changer_element_status_request = type { i32, %struct.changer_element_status*, i32, i8*, i8* }

@.str = private unnamed_addr constant [30 x i8] c"can't allocate status storage\00", align 1
@CESR_VOLTAGS = common dso_local global i32 0, align 4
@changer_fd = common dso_local global i32 0, align 4
@CHIOGSTATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: CHIOGSTATUS\00", align 1
@changer_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.changer_element_status* (i32, i32, i32)* @get_element_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.changer_element_status* @get_element_status(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.changer_element_status_request, align 8
  %8 = alloca %struct.changer_element_status*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i64 @calloc(i64 1, i32 4)
  %10 = inttoptr i64 %9 to %struct.changer_element_status*
  store %struct.changer_element_status* %10, %struct.changer_element_status** %8, align 8
  %11 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %12 = icmp eq %struct.changer_element_status* null, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  %16 = call i32 @memset(%struct.changer_element_status_request* %7, i32 0, i32 40)
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %7, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %7, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %7, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load i32, i32* @CESR_VOLTAGS, align 4
  %30 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %7, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %15
  %34 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %35 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %7, i32 0, i32 1
  store %struct.changer_element_status* %34, %struct.changer_element_status** %35, align 8
  %36 = load i32, i32* @changer_fd, align 4
  %37 = load i32, i32* @CHIOGSTATUS, align 4
  %38 = bitcast %struct.changer_element_status_request* %7 to i8*
  %39 = call i32 @ioctl(i32 %36, i32 %37, i8* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  %43 = call i32 @free(%struct.changer_element_status* %42)
  %44 = load i32, i32* @changer_name, align 4
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.changer_element_status*, %struct.changer_element_status** %8, align 8
  ret %struct.changer_element_status* %47
}

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.changer_element_status_request*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @free(%struct.changer_element_status*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
