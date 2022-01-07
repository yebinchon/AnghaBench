; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_timer.c_ax25_ds_t1_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_timer.c_ax25_ds_t1_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32* }

@AX25_MODULUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_SABM = common dso_local global i32 0, align 4
@AX25_POLLOFF = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_SABME = common dso_local global i32 0, align 4
@AX25_DISC = common dso_local global i32 0, align 4
@AX25_POLLON = common dso_local global i32 0, align 4
@AX25_DM = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_ds_t1_timeout(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %116 [
    i32 130, label %6
    i32 129, label %70
    i32 128, label %93
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %6
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AX25_MODULUS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = call i32 @ax25_disconnect(%struct.TYPE_9__* %21, i32 %22)
  br label %121

24:                                               ; preds = %14
  %25 = load i32, i32* @AX25_MODULUS, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load i32, i32* @AX25_SABM, align 4
  %42 = load i32, i32* @AX25_POLLOFF, align 4
  %43 = load i32, i32* @AX25_COMMAND, align 4
  %44 = call i32 @ax25_send_control(%struct.TYPE_9__* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %24
  br label %69

46:                                               ; preds = %6
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AX25_MODULUS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = load i32, i32* @AX25_SABM, align 4
  %59 = load i32, i32* @AX25_POLLOFF, align 4
  %60 = load i32, i32* @AX25_COMMAND, align 4
  %61 = call i32 @ax25_send_control(%struct.TYPE_9__* %57, i32 %58, i32 %59, i32 %60)
  br label %68

62:                                               ; preds = %46
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = load i32, i32* @AX25_SABME, align 4
  %65 = load i32, i32* @AX25_POLLOFF, align 4
  %66 = load i32, i32* @AX25_COMMAND, align 4
  %67 = call i32 @ax25_send_control(%struct.TYPE_9__* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %45
  br label %116

70:                                               ; preds = %1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = load i32, i32* @AX25_DISC, align 4
  %81 = load i32, i32* @AX25_POLLON, align 4
  %82 = load i32, i32* @AX25_COMMAND, align 4
  %83 = call i32 @ax25_send_control(%struct.TYPE_9__* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = call i32 @ax25_disconnect(%struct.TYPE_9__* %84, i32 %85)
  br label %121

87:                                               ; preds = %70
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87
  br label %116

93:                                               ; preds = %1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = load i32, i32* @AX25_DM, align 4
  %104 = load i32, i32* @AX25_POLLON, align 4
  %105 = load i32, i32* @AX25_RESPONSE, align 4
  %106 = call i32 @ax25_send_control(%struct.TYPE_9__* %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = call i32 @ax25_disconnect(%struct.TYPE_9__* %107, i32 %108)
  br label %121

110:                                              ; preds = %93
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %1, %115, %92, %69
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = call i32 @ax25_calculate_t1(%struct.TYPE_9__* %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = call i32 @ax25_start_t1timer(%struct.TYPE_9__* %119)
  br label %121

121:                                              ; preds = %116, %101, %78, %20
  ret void
}

declare dso_local i32 @ax25_disconnect(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ax25_send_control(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @ax25_calculate_t1(%struct.TYPE_9__*) #1

declare dso_local i32 @ax25_start_t1timer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
