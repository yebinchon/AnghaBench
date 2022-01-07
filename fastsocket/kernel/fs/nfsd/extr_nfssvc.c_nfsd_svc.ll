; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_svc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@nfsd_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nfsd: creating service\0A\00", align 1
@NFSD_MAXSERVS = common dso_local global i32 0, align 4
@nfsd_serv = common dso_local global %struct.TYPE_4__* null, align 8
@nfsd_up = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_svc(i16 zeroext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %7 = call i32 @mutex_lock(i32* @nfsd_mutex)
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NFSD_MAXSERVS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @NFSD_MAXSERVS, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %12
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_serv, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %62

25:                                               ; preds = %21, %18
  %26 = call i32 (...) @nfsd_create_serv()
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %62

30:                                               ; preds = %25
  %31 = load i32, i32* @nfsd_up, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i16, i16* %3, align 2
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @nfsd_startup(i16 zeroext %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %59

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_serv, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @svc_set_num_threads(%struct.TYPE_4__* %39, i32* null, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_serv, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 (...) @nfsd_shutdown()
  br label %58

58:                                               ; preds = %56, %53, %50
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsd_serv, align 8
  %61 = call i32 @svc_destroy(%struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %59, %29, %24
  %63 = call i32 @mutex_unlock(i32* @nfsd_mutex)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @nfsd_create_serv(...) #1

declare dso_local i32 @nfsd_startup(i16 zeroext, i32) #1

declare dso_local i32 @svc_set_num_threads(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @nfsd_shutdown(...) #1

declare dso_local i32 @svc_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
