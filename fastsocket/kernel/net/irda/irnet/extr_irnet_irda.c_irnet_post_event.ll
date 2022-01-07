; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_post_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_7__, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }

@CTRL_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"(ap=0x%p, event=%d, daddr=%08x, name=``%s'')\0A\00", align 1
@irnet_events = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@IRNET_MAX_EVENTS = common dso_local global i32 0, align 4
@CTRL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"New event index is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i8*, i8*, i8*, i32)* @irnet_post_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irnet_post_event(%struct.TYPE_9__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @CTRL_TRACE, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @DENTER(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %15, i32 %16, i8* %17, i8* %18)
  %20 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 2))
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 0), align 8
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  store i32 %22, i32* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  store i8* %28, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  store i8* %34, i8** %39, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %6
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @strcpy(i8* %48, i8* %49)
  br label %59

51:                                               ; preds = %6
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %51, %42
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %60, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %59
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @ppp_unit_number(i32* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 8
  br label %89

83:                                               ; preds = %69, %59
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 3), align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 -1, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %74
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @IRNET_MAX_EVENTS, align 4
  %93 = srem i32 %91, %92
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 0), align 8
  %94 = load i32, i32* @CTRL_INFO, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 0), align 8
  %96 = call i32 @DEBUG(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 2))
  %98 = call i32 @wake_up_interruptible_all(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_events, i32 0, i32 1))
  %99 = load i32, i32* @CTRL_TRACE, align 4
  %100 = call i32 @DEXIT(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_9__*, i32, i8*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ppp_unit_number(i32*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
