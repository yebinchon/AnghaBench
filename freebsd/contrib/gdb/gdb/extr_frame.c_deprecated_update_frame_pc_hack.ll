; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_deprecated_update_frame_pc_hack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_deprecated_update_frame_pc_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"{ deprecated_update_frame_pc_hack (frame=%d,pc=0x%s) }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deprecated_update_frame_pc_hack(%struct.frame_info* %0, i32 %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @frame_debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* @gdb_stdlog, align 4
  %9 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %10 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @paddr_nz(i32 %12)
  %14 = call i32 @fprintf_unfiltered(i32 %8, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %7, %2
  %16 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %17 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %23 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %28 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32, i32) #1

declare dso_local i32 @paddr_nz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
