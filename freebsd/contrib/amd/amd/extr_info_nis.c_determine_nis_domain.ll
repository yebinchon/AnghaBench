; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_determine_nis_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_determine_nis_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@determine_nis_domain.nis_not_running = internal global i32 0, align 4
@YPMAXDOMAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"getdomainname: %m\00", align 1
@EIO = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"NIS domain name is not set.  NIS ignored.\00", align 1
@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @determine_nis_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_nis_domain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @YPMAXDOMAIN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @determine_nis_domain.nis_not_running, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOENT, align 4
  store i32 %12, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %30

13:                                               ; preds = %0
  %14 = trunc i64 %6 to i32
  %15 = call i64 @getdomainname(i8* %8, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  store i32 1, i32* @determine_nis_domain.nis_not_running, align 4
  %18 = load i32, i32* @XLOG_ERROR, align 4
  %19 = call i32 @plog(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  store i32 %20, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %30

21:                                               ; preds = %13
  %22 = load i8, i8* %8, align 16
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  store i32 1, i32* @determine_nis_domain.nis_not_running, align 4
  %25 = load i32, i32* @XLOG_WARNING, align 4
  %26 = call i32 @plog(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @xstrdup(i8* %8)
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %24, %17, %11
  %31 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getdomainname(i8*, i32) #2

declare dso_local i32 @plog(i32, i8*) #2

declare dso_local i32 @xstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
