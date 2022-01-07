; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_SVCFH_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsfh.c_SVCFH_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { %struct.knfsd_fh }
%struct.knfsd_fh = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SVCFH_fmt.buf = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [34 x i8] c"%d: %08x %08x %08x %08x %08x %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SVCFH_fmt(%struct.svc_fh* %0) #0 {
  %2 = alloca %struct.svc_fh*, align 8
  %3 = alloca %struct.knfsd_fh*, align 8
  store %struct.svc_fh* %0, %struct.svc_fh** %2, align 8
  %4 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %5 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %4, i32 0, i32 0
  store %struct.knfsd_fh* %5, %struct.knfsd_fh** %3, align 8
  %6 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %7 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %10 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %16 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %22 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %28 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %34 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.knfsd_fh*, %struct.knfsd_fh** %3, align 8
  %40 = getelementptr inbounds %struct.knfsd_fh, %struct.knfsd_fh* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @SVCFH_fmt.buf, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %14, i32 %20, i32 %26, i32 %32, i32 %38, i32 %44)
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @SVCFH_fmt.buf, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
