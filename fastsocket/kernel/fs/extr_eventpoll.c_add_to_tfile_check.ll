; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_add_to_tfile_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_add_to_tfile_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tfile_check = type { i64, %struct.tfile_check*, %struct.epoll_filefd** }
%struct.epoll_filefd = type { i32 }

@current_tfile_check = common dso_local global %struct.tfile_check* null, align 8
@NUM_FILES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.epoll_filefd*)* @add_to_tfile_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_tfile_check(%struct.epoll_filefd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.epoll_filefd*, align 8
  %4 = alloca %struct.tfile_check*, align 8
  store %struct.epoll_filefd* %0, %struct.epoll_filefd** %3, align 8
  %5 = load %struct.tfile_check*, %struct.tfile_check** @current_tfile_check, align 8
  %6 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NUM_FILES, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.epoll_filefd*, %struct.epoll_filefd** %3, align 8
  %12 = load %struct.tfile_check*, %struct.tfile_check** @current_tfile_check, align 8
  %13 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %12, i32 0, i32 2
  %14 = load %struct.epoll_filefd**, %struct.epoll_filefd*** %13, align 8
  %15 = load %struct.tfile_check*, %struct.tfile_check** @current_tfile_check, align 8
  %16 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.epoll_filefd*, %struct.epoll_filefd** %14, i64 %17
  store %struct.epoll_filefd* %11, %struct.epoll_filefd** %19, align 8
  %20 = load %struct.epoll_filefd*, %struct.epoll_filefd** %3, align 8
  %21 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  store i32 0, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.tfile_check* @kmalloc(i32 24, i32 %23)
  store %struct.tfile_check* %24, %struct.tfile_check** %4, align 8
  %25 = load %struct.tfile_check*, %struct.tfile_check** %4, align 8
  %26 = icmp ne %struct.tfile_check* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %22
  %31 = load %struct.tfile_check*, %struct.tfile_check** %4, align 8
  %32 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.tfile_check*, %struct.tfile_check** %4, align 8
  %34 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %33, i32 0, i32 1
  store %struct.tfile_check* null, %struct.tfile_check** %34, align 8
  %35 = load %struct.epoll_filefd*, %struct.epoll_filefd** %3, align 8
  %36 = load %struct.tfile_check*, %struct.tfile_check** %4, align 8
  %37 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %36, i32 0, i32 2
  %38 = load %struct.epoll_filefd**, %struct.epoll_filefd*** %37, align 8
  %39 = load %struct.tfile_check*, %struct.tfile_check** %4, align 8
  %40 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds %struct.epoll_filefd*, %struct.epoll_filefd** %38, i64 %41
  store %struct.epoll_filefd* %35, %struct.epoll_filefd** %43, align 8
  %44 = load %struct.epoll_filefd*, %struct.epoll_filefd** %3, align 8
  %45 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.tfile_check*, %struct.tfile_check** %4, align 8
  %47 = load %struct.tfile_check*, %struct.tfile_check** @current_tfile_check, align 8
  %48 = getelementptr inbounds %struct.tfile_check, %struct.tfile_check* %47, i32 0, i32 1
  store %struct.tfile_check* %46, %struct.tfile_check** %48, align 8
  %49 = load %struct.tfile_check*, %struct.tfile_check** %4, align 8
  store %struct.tfile_check* %49, %struct.tfile_check** @current_tfile_check, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %30, %27, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.tfile_check* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
