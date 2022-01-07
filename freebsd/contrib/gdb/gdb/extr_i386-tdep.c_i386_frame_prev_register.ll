; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.i386_frame_cache = type { i32, i32*, i64 }

@I386_EFLAGS_REGNUM = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@I386_EIP_REGNUM = common dso_local global i32 0, align 4
@I386_EAX_REGNUM = common dso_local global i32 0, align 4
@I386_ESP_REGNUM = common dso_local global i32 0, align 4
@I386_NUM_SAVED_REGS = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i32*, i32*, i8*)* @i386_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.i386_frame_cache*, align 8
  %18 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = call %struct.i386_frame_cache* @i386_frame_cache(%struct.frame_info* %19, i8** %20)
  store %struct.i386_frame_cache* %21, %struct.i386_frame_cache** %17, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @gdb_assert(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @I386_EFLAGS_REGNUM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %8
  %30 = load i32*, i32** %12, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @not_lval, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %14, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %15, align 8
  store i32 -1, i32* %34, align 4
  %35 = load i8*, i8** %16, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %39 = load i32, i32* @I386_EFLAGS_REGNUM, align 4
  %40 = call i32 @frame_unwind_register_unsigned(%struct.frame_info* %38, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = and i32 %41, -1025
  store i32 %42, i32* %18, align 4
  %43 = load i8*, i8** %16, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @store_unsigned_integer(i8* %43, i32 4, i32 %44)
  br label %46

46:                                               ; preds = %37, %29
  br label %135

47:                                               ; preds = %8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @I386_EIP_REGNUM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %17, align 8
  %53 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %58 = load i32, i32* @I386_EAX_REGNUM, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = call i32 @frame_register_unwind(%struct.frame_info* %57, i32 %58, i32* %59, i32* %60, i32* %61, i32* %62, i8* %63)
  br label %135

65:                                               ; preds = %51, %47
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @I386_ESP_REGNUM, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %17, align 8
  %71 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load i32*, i32** %12, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* @not_lval, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %14, align 8
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** %15, align 8
  store i32 -1, i32* %79, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i8*, i8** %16, align 8
  %84 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %17, align 8
  %85 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @store_unsigned_integer(i8* %83, i32 4, i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  br label %135

89:                                               ; preds = %69, %65
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @I386_NUM_SAVED_REGS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %89
  %94 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %17, align 8
  %95 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %126

102:                                              ; preds = %93
  %103 = load i32*, i32** %12, align 8
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @lval_memory, align 4
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %17, align 8
  %107 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %14, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32*, i32** %15, align 8
  store i32 -1, i32* %114, align 4
  %115 = load i8*, i8** %16, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %102
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = load i32, i32* @current_gdbarch, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @register_size(i32 %121, i32 %122)
  %124 = call i32 @read_memory(i32 %119, i8* %120, i32 %123)
  br label %125

125:                                              ; preds = %117, %102
  br label %135

126:                                              ; preds = %93, %89
  %127 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call i32 @frame_register_unwind(%struct.frame_info* %127, i32 %128, i32* %129, i32* %130, i32* %131, i32* %132, i8* %133)
  br label %135

135:                                              ; preds = %126, %125, %88, %56, %46
  ret void
}

declare dso_local %struct.i386_frame_cache* @i386_frame_cache(%struct.frame_info*, i8**) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @frame_unwind_register_unsigned(%struct.frame_info*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @frame_register_unwind(%struct.frame_info*, i32, i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @read_memory(i32, i8*, i32) #1

declare dso_local i32 @register_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
