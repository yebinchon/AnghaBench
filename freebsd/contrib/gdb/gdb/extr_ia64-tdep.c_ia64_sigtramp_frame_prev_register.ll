; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_sigtramp_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_sigtramp_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.ia64_frame_cache = type { i64* }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@target_has_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"No registers.\00", align 1
@not_lval = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@IA64_IP_REGNUM = common dso_local global i32 0, align 4
@IA64_VRAP_REGNUM = common dso_local global i64 0, align 8
@lval_memory = common dso_local global i32 0, align 4
@IA64_GR32_REGNUM = common dso_local global i32 0, align 4
@IA64_GR127_REGNUM = common dso_local global i32 0, align 4
@V32_REGNUM = common dso_local global i32 0, align 4
@V127_REGNUM = common dso_local global i32 0, align 4
@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"sigtramp prev register <%s> is 0x%s\0A\00", align 1
@IA64_NAT127_REGNUM = common dso_local global i32 0, align 4
@ia64_register_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"r??\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i64*, i32*, i8*)* @ia64_sigtramp_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_sigtramp_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ia64_frame_cache*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %25 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %32 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %33 = load i8**, i8*** %10, align 8
  %34 = call %struct.ia64_frame_cache* @ia64_sigtramp_frame_cache(%struct.frame_info* %32, i8** %33)
  store %struct.ia64_frame_cache* %34, %struct.ia64_frame_cache** %20, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @gdb_assert(i32 %37)
  %39 = load i32, i32* @target_has_registers, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %8
  %44 = load i32*, i32** %12, align 8
  store i32 0, i32* %44, align 4
  %45 = load i64*, i64** %14, align 8
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @not_lval, align 4
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %15, align 8
  store i32 -1, i32* %48, align 4
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i8* %28, i8** %16, align 8
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i8*, i8** %16, align 8
  %54 = load i32, i32* @current_gdbarch, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @register_size(i32 %54, i32 %55)
  %57 = call i32 @memset(i8* %53, i32 0, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @IA64_IP_REGNUM, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %52
  store i64 0, i64* %21, align 8
  %62 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %20, align 8
  %63 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @IA64_VRAP_REGNUM, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %22, align 8
  %68 = load i64, i64* %22, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %61
  %71 = load i32, i32* @lval_memory, align 4
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i64, i64* %22, align 8
  %74 = load i64*, i64** %14, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %22, align 8
  %76 = load i32, i32* @current_gdbarch, align 4
  %77 = load i32, i32* @IA64_IP_REGNUM, align 4
  %78 = call i32 @register_size(i32 %76, i32 %77)
  %79 = call i32 @ia64_read_reg(i64 %75, i8* %31, i32 %78)
  %80 = call i64 @extract_unsigned_integer(i8* %31, i32 8)
  store i64 %80, i64* %21, align 8
  br label %81

81:                                               ; preds = %70, %61
  %82 = load i64, i64* %21, align 8
  %83 = and i64 %82, -16
  store i64 %83, i64* %21, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i64, i64* %21, align 8
  %86 = call i32 @store_unsigned_integer(i8* %84, i32 8, i64 %85)
  br label %158

87:                                               ; preds = %52
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @IA64_GR32_REGNUM, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @IA64_GR127_REGNUM, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @V32_REGNUM, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %135

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @V127_REGNUM, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %99, %91
  store i64 0, i64* %23, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @V32_REGNUM, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* @IA64_GR32_REGNUM, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @V32_REGNUM, align 4
  %111 = sub nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %107, %103
  %114 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %20, align 8
  %115 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %23, align 8
  %121 = load i64, i64* %23, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %113
  %124 = load i32, i32* @lval_memory, align 4
  %125 = load i32*, i32** %13, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i64, i64* %23, align 8
  %127 = load i64*, i64** %14, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64, i64* %23, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = load i32, i32* @current_gdbarch, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @register_size(i32 %130, i32 %131)
  %133 = call i32 @ia64_read_reg(i64 %128, i8* %129, i32 %132)
  br label %134

134:                                              ; preds = %123, %113
  br label %157

135:                                              ; preds = %99, %95
  %136 = load %struct.ia64_frame_cache*, %struct.ia64_frame_cache** %20, align 8
  %137 = getelementptr inbounds %struct.ia64_frame_cache, %struct.ia64_frame_cache* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %24, align 8
  %143 = load i64, i64* %24, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %135
  %146 = load i32, i32* @lval_memory, align 4
  %147 = load i32*, i32** %13, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i64, i64* %24, align 8
  %149 = load i64*, i64** %14, align 8
  store i64 %148, i64* %149, align 8
  %150 = load i64, i64* %24, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = load i32, i32* @current_gdbarch, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @register_size(i32 %152, i32 %153)
  %155 = call i32 @ia64_read_reg(i64 %150, i8* %151, i32 %154)
  br label %156

156:                                              ; preds = %145, %135
  br label %157

157:                                              ; preds = %156, %134
  br label %158

158:                                              ; preds = %157, %81
  %159 = load i32, i32* @gdbarch_debug, align 4
  %160 = icmp sge i32 %159, 1
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i32, i32* @gdb_stdlog, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @IA64_NAT127_REGNUM, align 4
  %165 = icmp ule i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i8**, i8*** @ia64_register_names, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  br label %173

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %166
  %174 = phi i8* [ %171, %166 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %172 ]
  %175 = load i8*, i8** %16, align 8
  %176 = call i64 @extract_unsigned_integer(i8* %175, i32 8)
  %177 = call i32 @paddr_nz(i64 %176)
  %178 = call i32 @fprintf_unfiltered(i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %174, i32 %177)
  br label %179

179:                                              ; preds = %173, %158
  %180 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %180)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ia64_frame_cache* @ia64_sigtramp_frame_cache(%struct.frame_info*, i8**) #2

declare dso_local i32 @gdb_assert(i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @register_size(i32, i32) #2

declare dso_local i32 @ia64_read_reg(i64, i8*, i32) #2

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #2

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*, i32) #2

declare dso_local i32 @paddr_nz(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
