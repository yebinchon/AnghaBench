; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_deprecated_update_frame_base_hack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_deprecated_update_frame_base_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"{ deprecated_update_frame_base_hack (frame=%d,base=0x%s) }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deprecated_update_frame_base_hack(%struct.frame_info* %0, i32 %1) #0 {
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
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @paddr_nz(i32 %12)
  %14 = call i32 @fprintf_unfiltered(i32 %8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %18 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
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
