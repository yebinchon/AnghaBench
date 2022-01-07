; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.amd64_frame_cache = type { i32*, i64 }

@SP_REGNUM = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@AMD64_NUM_SAVED_REGS = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i32*, i32*, i8*)* @amd64_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd64_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.amd64_frame_cache*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = call %struct.amd64_frame_cache* @amd64_frame_cache(%struct.frame_info* %18, i8** %19)
  store %struct.amd64_frame_cache* %20, %struct.amd64_frame_cache** %17, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @gdb_assert(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SP_REGNUM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %8
  %29 = load %struct.amd64_frame_cache*, %struct.amd64_frame_cache** %17, align 8
  %30 = getelementptr inbounds %struct.amd64_frame_cache, %struct.amd64_frame_cache* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i32*, i32** %12, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @not_lval, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %14, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %15, align 8
  store i32 -1, i32* %38, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i8*, i8** %16, align 8
  %43 = load %struct.amd64_frame_cache*, %struct.amd64_frame_cache** %17, align 8
  %44 = getelementptr inbounds %struct.amd64_frame_cache, %struct.amd64_frame_cache* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @store_unsigned_integer(i8* %42, i32 8, i64 %45)
  br label %47

47:                                               ; preds = %41, %33
  br label %94

48:                                               ; preds = %28, %8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @AMD64_NUM_SAVED_REGS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load %struct.amd64_frame_cache*, %struct.amd64_frame_cache** %17, align 8
  %54 = getelementptr inbounds %struct.amd64_frame_cache, %struct.amd64_frame_cache* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %85

61:                                               ; preds = %52
  %62 = load i32*, i32** %12, align 8
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* @lval_memory, align 4
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.amd64_frame_cache*, %struct.amd64_frame_cache** %17, align 8
  %66 = getelementptr inbounds %struct.amd64_frame_cache, %struct.amd64_frame_cache* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %14, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %15, align 8
  store i32 -1, i32* %73, align 4
  %74 = load i8*, i8** %16, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %61
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %16, align 8
  %80 = load i32, i32* @current_gdbarch, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @register_size(i32 %80, i32 %81)
  %83 = call i32 @read_memory(i32 %78, i8* %79, i32 %82)
  br label %84

84:                                               ; preds = %76, %61
  br label %94

85:                                               ; preds = %52, %48
  %86 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @frame_register_unwind(%struct.frame_info* %86, i32 %87, i32* %88, i32* %89, i32* %90, i32* %91, i8* %92)
  br label %94

94:                                               ; preds = %85, %84, %47
  ret void
}

declare dso_local %struct.amd64_frame_cache* @amd64_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i32 @read_memory(i32, i8*, i32) #1

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local i32 @frame_register_unwind(%struct.frame_info*, i32, i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
