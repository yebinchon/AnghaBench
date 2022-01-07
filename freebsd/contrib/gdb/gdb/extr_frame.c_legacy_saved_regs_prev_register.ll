; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_legacy_saved_regs_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_legacy_saved_regs_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { %struct.frame_info* }

@SP_REGNUM = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i64*, i32*, i8*)* @legacy_saved_regs_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_saved_regs_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.frame_info*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %20 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %21 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %20, i32 0, i32 0
  %22 = load %struct.frame_info*, %struct.frame_info** %21, align 8
  store %struct.frame_info* %22, %struct.frame_info** %17, align 8
  %23 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %24 = icmp ne %struct.frame_info* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %28 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %27)
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %8
  %31 = call i32 (...) @DEPRECATED_FRAME_INIT_SAVED_REGS_P()
  %32 = call i32 @gdb_assert(i32 %31)
  %33 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %34 = call i32 @DEPRECATED_FRAME_INIT_SAVED_REGS(%struct.frame_info* %33)
  %35 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %36 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %35)
  %37 = icmp ne i64* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @gdb_assert(i32 %38)
  br label %40

40:                                               ; preds = %30, %8
  %41 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %42 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %41)
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %150

44:                                               ; preds = %40
  %45 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %46 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %45)
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %150

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @SP_REGNUM, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i32*, i32** %12, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* @not_lval, align 4
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i64*, i64** %14, align 8
  store i64 0, i64* %60, align 8
  %61 = load i32*, i32** %15, align 8
  store i32 -1, i32* %61, align 4
  %62 = load i8*, i8** %16, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load i8*, i8** %16, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %66)
  %68 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %69 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %68)
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @store_unsigned_integer(i8* %65, i32 %67, i64 %73)
  br label %75

75:                                               ; preds = %64, %56
  br label %149

76:                                               ; preds = %52
  %77 = load i32*, i32** %12, align 8
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @lval_memory, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %81 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %80)
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %14, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i32*, i32** %15, align 8
  store i32 -1, i32* %87, align 4
  %88 = load i8*, i8** %16, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %148

90:                                               ; preds = %76
  %91 = load i8**, i8*** %10, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i8**
  store i8** %93, i8*** %18, align 8
  %94 = load i8**, i8*** %18, align 8
  %95 = icmp eq i8** %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i32, i32* @NUM_REGS, align 4
  %98 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i8* @frame_obstack_zalloc(i32 %103)
  %105 = bitcast i8* %104 to i8**
  store i8** %105, i8*** %18, align 8
  %106 = load i8**, i8*** %18, align 8
  %107 = bitcast i8** %106 to i8*
  %108 = load i8**, i8*** %10, align 8
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %96, %90
  %110 = load i8**, i8*** %18, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %138

116:                                              ; preds = %109
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %117)
  %119 = call i8* @frame_obstack_zalloc(i32 %118)
  %120 = load i8**, i8*** %18, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %119, i8** %123, align 8
  %124 = load %struct.frame_info*, %struct.frame_info** %17, align 8
  %125 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %124)
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i8**, i8*** %18, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %135)
  %137 = call i32 @read_memory(i64 %129, i8* %134, i32 %136)
  br label %138

138:                                              ; preds = %116, %109
  %139 = load i8*, i8** %16, align 8
  %140 = load i8**, i8*** %18, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %145)
  %147 = call i32 @memcpy(i8* %139, i8* %144, i32 %146)
  br label %148

148:                                              ; preds = %138, %76
  br label %149

149:                                              ; preds = %148, %75
  br label %159

150:                                              ; preds = %44, %40
  %151 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = load i64*, i64** %14, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = call i32 @frame_register_unwind(%struct.frame_info* %151, i32 %152, i32* %153, i32* %154, i64* %155, i32* %156, i8* %157)
  br label %159

159:                                              ; preds = %150, %149
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64* @deprecated_get_frame_saved_regs(%struct.frame_info*) #1

declare dso_local i32 @DEPRECATED_FRAME_INIT_SAVED_REGS_P(...) #1

declare dso_local i32 @DEPRECATED_FRAME_INIT_SAVED_REGS(%struct.frame_info*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i8* @frame_obstack_zalloc(i32) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @frame_register_unwind(%struct.frame_info*, i32, i32*, i32*, i64*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
