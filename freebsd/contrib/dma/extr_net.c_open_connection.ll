; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_net.c_open_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_net.c_open_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx_hostentry = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"trying remote delivery to %s [%s] pref %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"socket for %s [%s] failed: %m\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"connect to %s [%s] failed: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx_hostentry*)* @open_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_connection(%struct.mx_hostentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mx_hostentry*, align 8
  %4 = alloca i32, align 4
  store %struct.mx_hostentry* %0, %struct.mx_hostentry** %3, align 8
  %5 = load i32, i32* @LOG_INFO, align 4
  %6 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %7 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %10 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %13 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, i32, i32, ...) @syslog(i32 %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14)
  %16 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %17 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %21 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %25 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @socket(i32 %19, i32 %23, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load i32, i32* @LOG_INFO, align 4
  %33 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %34 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %37 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, i32, ...) @syslog(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  store i32 -1, i32* %2, align 4
  br label %64

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %43 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %42, i32 0, i32 3
  %44 = bitcast i32* %43 to %struct.sockaddr*
  %45 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %46 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @connect(i32 %41, %struct.sockaddr* %44, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load i32, i32* @LOG_INFO, align 4
  %53 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %54 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mx_hostentry*, %struct.mx_hostentry** %3, align 8
  %57 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, i32, ...) @syslog(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @close(i32 %60)
  store i32 -1, i32* %2, align 4
  br label %64

62:                                               ; preds = %40
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %51, %31
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @syslog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
