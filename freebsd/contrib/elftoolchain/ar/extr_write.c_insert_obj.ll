; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_insert_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_insert_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32, i32 }
%struct.ar_obj = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"try to insert a null obj\00", align 1
@AR_B = common dso_local global i32 0, align 4
@objs = common dso_local global i32 0, align 4
@AR_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, %struct.ar_obj*, %struct.ar_obj*)* @insert_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_obj(%struct.bsdar* %0, %struct.ar_obj* %1, %struct.ar_obj* %2) #0 {
  %4 = alloca %struct.bsdar*, align 8
  %5 = alloca %struct.ar_obj*, align 8
  %6 = alloca %struct.ar_obj*, align 8
  store %struct.bsdar* %0, %struct.bsdar** %4, align 8
  store %struct.ar_obj* %1, %struct.ar_obj** %5, align 8
  store %struct.ar_obj* %2, %struct.ar_obj** %6, align 8
  %7 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %8 = icmp eq %struct.ar_obj* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %11 = call i32 @bsdar_errc(%struct.bsdar* %10, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %3
  %13 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %14 = icmp eq %struct.ar_obj* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %17 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %18 = icmp eq %struct.ar_obj* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12
  br label %47

20:                                               ; preds = %15
  %21 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %22 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AR_B, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %29 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %30 = load i32, i32* @objs, align 4
  %31 = call i32 @TAILQ_INSERT_BEFORE(%struct.ar_obj* %28, %struct.ar_obj* %29, i32 %30)
  br label %53

32:                                               ; preds = %20
  %33 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %34 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR_A, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %41 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %40, i32 0, i32 1
  %42 = load %struct.ar_obj*, %struct.ar_obj** %6, align 8
  %43 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %44 = load i32, i32* @objs, align 4
  %45 = call i32 @TAILQ_INSERT_AFTER(i32* %41, %struct.ar_obj* %42, %struct.ar_obj* %43, i32 %44)
  br label %53

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %49 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %48, i32 0, i32 1
  %50 = load %struct.ar_obj*, %struct.ar_obj** %5, align 8
  %51 = load i32, i32* @objs, align 4
  %52 = call i32 @TAILQ_INSERT_TAIL(i32* %49, %struct.ar_obj* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %39, %27
  ret void
}

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.ar_obj*, %struct.ar_obj*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.ar_obj*, %struct.ar_obj*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ar_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
