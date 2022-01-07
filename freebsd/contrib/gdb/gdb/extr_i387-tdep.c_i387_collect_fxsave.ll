; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_collect_fxsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_collect_fxsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i64, i64 }

@current_gdbarch = common dso_local global i32 0, align 4
@I386_ST0_REGNUM = common dso_local global i64 0, align 8
@I387_MXCSR_REGNUM = common dso_local global i32 0, align 4
@I387_FCTRL_REGNUM = common dso_local global i32 0, align 4
@I387_XMM0_REGNUM = common dso_local global i32 0, align 4
@I387_FIOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOP_REGNUM = common dso_local global i32 0, align 4
@I387_FTAG_REGNUM = common dso_local global i32 0, align 4
@I387_ST0_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_collect_fxsave(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @current_gdbarch, align 4
  %15 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %14)
  store %struct.gdbarch_tdep* %15, %struct.gdbarch_tdep** %7, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %18 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I386_ST0_REGNUM, align 8
  %21 = icmp sge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gdb_assert(i32 %22)
  %24 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %25 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @gdb_assert(i32 %28)
  %30 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %31 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %143, %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %146

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %142

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @I387_FCTRL_REGNUM, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %134

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @I387_XMM0_REGNUM, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %134

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @I387_FIOFF_REGNUM, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %134

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @I387_FOOFF_REGNUM, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %134

61:                                               ; preds = %57
  %62 = load %struct.regcache*, %struct.regcache** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %65 = call i32 (%struct.regcache*, i32, ...) @regcache_raw_collect(%struct.regcache* %62, i32 %63, i8* %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @I387_FOP_REGNUM, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %61
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 7
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %70, align 1
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32* @FXSAVE_ADDR(i8* %75, i32 %76)
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -8
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, %80
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %81, align 1
  br label %128

86:                                               ; preds = %61
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @I387_FTAG_REGNUM, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %86
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 %93, 8
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %94, %97
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %11, align 2
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %100, align 1
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %101, align 1
  store i32 7, i32* %12, align 4
  br label %102

102:                                              ; preds = %123, %90
  %103 = load i32, i32* %12, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load i16, i16* %11, align 2
  %107 = zext i16 %106 to i32
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %108, 2
  %110 = ashr i32 %107, %109
  %111 = and i32 %110, 3
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 3
  br i1 %113, label %114, label %122

114:                                              ; preds = %105
  %115 = load i32, i32* %12, align 4
  %116 = shl i32 1, %115
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %119, %116
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %117, align 1
  br label %122

122:                                              ; preds = %114, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %12, align 4
  br label %102

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126, %86
  br label %128

128:                                              ; preds = %127, %69
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32* @FXSAVE_ADDR(i8* %129, i32 %130)
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %133 = call i32 @memcpy(i32* %131, i8* %132, i32 2)
  br label %141

134:                                              ; preds = %57, %53, %49, %45
  %135 = load %struct.regcache*, %struct.regcache** %4, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32* @FXSAVE_ADDR(i8* %137, i32 %138)
  %140 = call i32 (%struct.regcache*, i32, ...) @regcache_raw_collect(%struct.regcache* %135, i32 %136, i32* %139)
  br label %141

141:                                              ; preds = %134, %128
  br label %142

142:                                              ; preds = %141, %41
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %34

146:                                              ; preds = %34
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %5, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %159

153:                                              ; preds = %150, %146
  %154 = load %struct.regcache*, %struct.regcache** %4, align 8
  %155 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = call i32* @FXSAVE_MXCSR_ADDR(i8* %156)
  %158 = call i32 (%struct.regcache*, i32, ...) @regcache_raw_collect(%struct.regcache* %154, i32 %155, i32* %157)
  br label %159

159:                                              ; preds = %153, %150
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_collect(%struct.regcache*, i32, ...) #1

declare dso_local i32* @FXSAVE_ADDR(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32* @FXSAVE_MXCSR_ADDR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
