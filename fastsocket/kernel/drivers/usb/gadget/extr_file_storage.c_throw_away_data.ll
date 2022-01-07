; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_throw_away_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_throw_away_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.fsg_dev = type { i64, %struct.fsg_buffhd*, i32, %struct.fsg_buffhd* }
%struct.fsg_buffhd = type { i64, i64, %struct.fsg_buffhd*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@BUF_STATE_FULL = common dso_local global i64 0, align 8
@FSG_STATE_ABORT_BULK_OUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@mod_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @throw_away_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throw_away_data(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  br label %7

7:                                                ; preds = %123, %77, %62, %1
  %8 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %9 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %8, i32 0, i32 3
  %10 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  store %struct.fsg_buffhd* %10, %struct.fsg_buffhd** %4, align 8
  %11 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %17 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br label %20

20:                                               ; preds = %15, %7
  %21 = phi i1 [ true, %7 ], [ %19, %15 ]
  br i1 %21, label %22, label %124

22:                                               ; preds = %20
  %23 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %24 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BUF_STATE_FULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = call i32 (...) @smp_rmb()
  %30 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %31 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %32 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %34 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %33, i32 0, i32 2
  %35 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %34, align 8
  %36 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %37 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %36, i32 0, i32 3
  store %struct.fsg_buffhd* %35, %struct.fsg_buffhd** %37, align 8
  %38 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %39 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %44 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %42, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %28
  %50 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %51 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49, %28
  %57 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %58 = load i32, i32* @FSG_STATE_ABORT_BULK_OUT, align 4
  %59 = call i32 @raise_exception(%struct.fsg_dev* %57, i32 %58)
  %60 = load i32, i32* @EINTR, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %125

62:                                               ; preds = %49
  br label %7

63:                                               ; preds = %22
  %64 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %65 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %64, i32 0, i32 1
  %66 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %65, align 8
  store %struct.fsg_buffhd* %66, %struct.fsg_buffhd** %4, align 8
  %67 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %68 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %116

72:                                               ; preds = %63
  %73 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %74 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %72
  %78 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %79 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mod_data, i32 0, i32 0), align 8
  %82 = call i64 @min(i64 %80, i64 %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %85 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %87 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %86, i32 0, i32 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i64 %83, i64* %89, align 8
  %90 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %91 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %90, i32 0, i32 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32 1, i32* %93, align 8
  %94 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %95 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %96 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %99 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %98, i32 0, i32 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %102 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %101, i32 0, i32 3
  %103 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %104 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %103, i32 0, i32 0
  %105 = call i32 @start_transfer(%struct.fsg_dev* %94, i32 %97, %struct.TYPE_3__* %100, i32* %102, i64* %104)
  %106 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %107 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %106, i32 0, i32 2
  %108 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %107, align 8
  %109 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %110 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %109, i32 0, i32 1
  store %struct.fsg_buffhd* %108, %struct.fsg_buffhd** %110, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %113 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %7

116:                                              ; preds = %72, %63
  %117 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %118 = call i32 @sleep_thread(%struct.fsg_dev* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %125

123:                                              ; preds = %116
  br label %7

124:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %121, %56
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @raise_exception(%struct.fsg_dev*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @start_transfer(%struct.fsg_dev*, i32, %struct.TYPE_3__*, i32*, i64*) #1

declare dso_local i32 @sleep_thread(%struct.fsg_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
