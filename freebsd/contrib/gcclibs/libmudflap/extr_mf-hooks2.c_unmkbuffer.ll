; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-hooks2.c_unmkbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-hooks2.c_unmkbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mf_filebuffer = type { %struct.mf_filebuffer*, %struct.mf_filebuffer*, i32* }

@mf_filebuffers = common dso_local global %struct.mf_filebuffer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @unmkbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmkbuffer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mf_filebuffer*, align 8
  %4 = alloca %struct.mf_filebuffer**, align 8
  store i32* %0, i32** %2, align 8
  %5 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** @mf_filebuffers, align 8
  store %struct.mf_filebuffer* %5, %struct.mf_filebuffer** %3, align 8
  store %struct.mf_filebuffer** @mf_filebuffers, %struct.mf_filebuffer*** %4, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %3, align 8
  %8 = icmp ne %struct.mf_filebuffer* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %3, align 8
  %11 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %3, align 8
  %17 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %16, i32 0, i32 0
  %18 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %17, align 8
  %19 = load %struct.mf_filebuffer**, %struct.mf_filebuffer*** %4, align 8
  store %struct.mf_filebuffer* %18, %struct.mf_filebuffer** %19, align 8
  %20 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %3, align 8
  %21 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %20, i32 0, i32 1
  %22 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %21, align 8
  %23 = call i32 @free(%struct.mf_filebuffer* %22)
  %24 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %3, align 8
  %25 = call i32 @free(%struct.mf_filebuffer* %24)
  br label %32

26:                                               ; preds = %9
  %27 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %3, align 8
  %28 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %27, i32 0, i32 0
  store %struct.mf_filebuffer** %28, %struct.mf_filebuffer*** %4, align 8
  %29 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %3, align 8
  %30 = getelementptr inbounds %struct.mf_filebuffer, %struct.mf_filebuffer* %29, i32 0, i32 0
  %31 = load %struct.mf_filebuffer*, %struct.mf_filebuffer** %30, align 8
  store %struct.mf_filebuffer* %31, %struct.mf_filebuffer** %3, align 8
  br label %6

32:                                               ; preds = %15, %6
  ret void
}

declare dso_local i32 @free(%struct.mf_filebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
