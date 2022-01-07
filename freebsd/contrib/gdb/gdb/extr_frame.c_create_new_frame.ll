; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_create_new_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_create_new_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i64, %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@frame_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"{ create_new_frame (addr=0x%s, pc=0x%s) \00", align 1
@current_regcache = common dso_local global i32 0, align 4
@UNKNOWN_FRAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_info* @create_new_frame(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_info*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @frame_debug, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @gdb_stdlog, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @paddr_nz(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @paddr_nz(i32 %12)
  %14 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %8, %2
  %16 = call %struct.frame_info* @frame_obstack_zalloc(i32 32)
  store %struct.frame_info* %16, %struct.frame_info** %5, align 8
  %17 = load i32, i32* @current_regcache, align 4
  %18 = call i32 @create_sentinel_frame(i32 %17)
  %19 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %20 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %22 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_4__* @frame_unwind_find_by_frame(i32 %23)
  %25 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %26 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %25, i32 0, i32 2
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %28 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UNKNOWN_FRAME, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %15
  %35 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %36 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %41 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %47

42:                                               ; preds = %15
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @frame_type_from_pc(i32 %43)
  %45 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %46 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %34
  %48 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %49 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @deprecated_update_frame_base_hack(%struct.frame_info* %51, i32 %52)
  %54 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @deprecated_update_frame_pc_hack(%struct.frame_info* %54, i32 %55)
  %57 = call i64 (...) @DEPRECATED_INIT_EXTRA_FRAME_INFO_P()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %61 = call i32 @DEPRECATED_INIT_EXTRA_FRAME_INFO(i32 0, %struct.frame_info* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load i64, i64* @frame_debug, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* @gdb_stdlog, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @gdb_stdlog, align 4
  %69 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %70 = call i32 @fprint_frame(i32 %68, %struct.frame_info* %69)
  %71 = load i32, i32* @gdb_stdlog, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %65, %62
  %74 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  ret %struct.frame_info* %74
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local %struct.frame_info* @frame_obstack_zalloc(i32) #1

declare dso_local i32 @create_sentinel_frame(i32) #1

declare dso_local %struct.TYPE_4__* @frame_unwind_find_by_frame(i32) #1

declare dso_local i64 @frame_type_from_pc(i32) #1

declare dso_local i32 @deprecated_update_frame_base_hack(%struct.frame_info*, i32) #1

declare dso_local i32 @deprecated_update_frame_pc_hack(%struct.frame_info*, i32) #1

declare dso_local i64 @DEPRECATED_INIT_EXTRA_FRAME_INFO_P(...) #1

declare dso_local i32 @DEPRECATED_INIT_EXTRA_FRAME_INFO(i32, %struct.frame_info*) #1

declare dso_local i32 @fprint_frame(i32, %struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
