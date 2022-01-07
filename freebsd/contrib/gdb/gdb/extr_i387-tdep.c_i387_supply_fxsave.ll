; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_supply_fxsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_i387_supply_fxsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i64, i64 }

@I386_ST0_REGNUM = common dso_local global i64 0, align 8
@I387_MXCSR_REGNUM = common dso_local global i32 0, align 4
@I387_FCTRL_REGNUM = common dso_local global i32 0, align 4
@I387_XMM0_REGNUM = common dso_local global i32 0, align 4
@I387_FIOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOOFF_REGNUM = common dso_local global i32 0, align 4
@I387_FOP_REGNUM = common dso_local global i32 0, align 4
@I387_FTAG_REGNUM = common dso_local global i32 0, align 4
@I387_FSTAT_REGNUM = common dso_local global i32 0, align 4
@I387_ST0_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_supply_fxsave(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %16 = load %struct.regcache*, %struct.regcache** %4, align 8
  %17 = call i32 @get_regcache_arch(%struct.regcache* %16)
  %18 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %17)
  store %struct.gdbarch_tdep* %18, %struct.gdbarch_tdep** %7, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %21 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @I386_ST0_REGNUM, align 8
  %24 = icmp sge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %28 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @gdb_assert(i32 %31)
  %33 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %34 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %166, %3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %169

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %165

48:                                               ; preds = %44, %41
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.regcache*, %struct.regcache** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @regcache_raw_supply(%struct.regcache* %52, i32 %53, i8* null)
  br label %166

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @I387_FCTRL_REGNUM, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %157

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @I387_XMM0_REGNUM, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %157

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @I387_FIOFF_REGNUM, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %157

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @I387_FOOFF_REGNUM, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %157

71:                                               ; preds = %67
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i8* @FXSAVE_ADDR(i8* %73, i32 %74)
  %76 = call i32 @memcpy(i8* %72, i8* %75, i32 2)
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @I387_FOP_REGNUM, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 7
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %83, align 1
  br label %152

88:                                               ; preds = %71
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @I387_FTAG_REGNUM, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %151

92:                                               ; preds = %88
  store i64 0, i64* %11, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @I387_FSTAT_REGNUM, align 4
  %95 = call i8* @FXSAVE_ADDR(i8* %93, i32 %94)
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = ashr i32 %98, 3
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, 7
  store i32 %101, i32* %13, align 4
  store i32 7, i32* %12, align 4
  br label %102

102:                                              ; preds = %138, %92
  %103 = load i32, i32* %12, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %102
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 1, %109
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %105
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 8
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %115, %116
  %118 = srem i32 %117, 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %121 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %15, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i8* @FXSAVE_ADDR(i8* %125, i32 %126)
  %128 = call i32 @i387_tag(i8* %127)
  store i32 %128, i32* %14, align 4
  br label %130

129:                                              ; preds = %105
  store i32 3, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %113
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %12, align 4
  %133 = mul nsw i32 2, %132
  %134 = shl i32 %131, %133
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %11, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %11, align 8
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %12, align 4
  br label %102

141:                                              ; preds = %102
  %142 = load i64, i64* %11, align 8
  %143 = and i64 %142, 255
  %144 = trunc i64 %143 to i8
  %145 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  store i8 %144, i8* %145, align 1
  %146 = load i64, i64* %11, align 8
  %147 = lshr i64 %146, 8
  %148 = and i64 %147, 255
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  store i8 %149, i8* %150, align 1
  br label %151

151:                                              ; preds = %141, %88
  br label %152

152:                                              ; preds = %151, %82
  %153 = load %struct.regcache*, %struct.regcache** %4, align 8
  %154 = load i32, i32* %9, align 4
  %155 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %156 = call i32 @regcache_raw_supply(%struct.regcache* %153, i32 %154, i8* %155)
  br label %164

157:                                              ; preds = %67, %63, %59, %55
  %158 = load %struct.regcache*, %struct.regcache** %4, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i8* @FXSAVE_ADDR(i8* %160, i32 %161)
  %163 = call i32 @regcache_raw_supply(%struct.regcache* %158, i32 %159, i8* %162)
  br label %164

164:                                              ; preds = %157, %152
  br label %165

165:                                              ; preds = %164, %44
  br label %166

166:                                              ; preds = %165, %51
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %37

169:                                              ; preds = %37
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %5, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %190

176:                                              ; preds = %173, %169
  %177 = load i8*, i8** %8, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.regcache*, %struct.regcache** %4, align 8
  %181 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %182 = call i32 @regcache_raw_supply(%struct.regcache* %180, i32 %181, i8* null)
  br label %189

183:                                              ; preds = %176
  %184 = load %struct.regcache*, %struct.regcache** %4, align 8
  %185 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %186 = load i8*, i8** %8, align 8
  %187 = call i8* @FXSAVE_MXCSR_ADDR(i8* %186)
  %188 = call i32 @regcache_raw_supply(%struct.regcache* %184, i32 %185, i8* %187)
  br label %189

189:                                              ; preds = %183, %179
  br label %190

190:                                              ; preds = %189, %173
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @get_regcache_arch(%struct.regcache*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @FXSAVE_ADDR(i8*, i32) #1

declare dso_local i32 @i387_tag(i8*) #1

declare dso_local i8* @FXSAVE_MXCSR_ADDR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
