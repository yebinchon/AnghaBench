; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_print_gp_register_row.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_print_gp_register_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.frame_info = type { i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"     \00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global %struct.gdbarch* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%17s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%9s\00", align 1
@MIPS_NUMREGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"\0A R%-4d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\0A      \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"can't read register %d (%s)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_file*, %struct.frame_info*, i32)* @print_gp_register_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_gp_register_row(%struct.ui_file* %0, %struct.frame_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdbarch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %4, align 8
  store %struct.frame_info* %1, %struct.frame_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %15 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %14)
  store %struct.gdbarch* %15, %struct.gdbarch** %7, align 8
  %16 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %21 = call i32 @mips_regsize(%struct.gdbarch* %20)
  %22 = icmp eq i32 %21, 8
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 4, i32 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %26 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %67, %3
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @NUM_REGS, align 4
  %35 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %40, label %70

40:                                               ; preds = %38
  %41 = load i32, i32* %13, align 4
  %42 = call i8* @REGISTER_NAME(i32 %41)
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %67

47:                                               ; preds = %40
  %48 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @gdbarch_register_type(%struct.gdbarch* %48, i32 %49)
  %51 = call i64 @TYPE_CODE(i32 %50)
  %52 = load i64, i64* @TYPE_CODE_FLT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %70

55:                                               ; preds = %47
  %56 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %57 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %58 = call i32 @mips_regsize(%struct.gdbarch* %57)
  %59 = icmp eq i32 %58, 8
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32, i32* %13, align 4
  %63 = call i8* @REGISTER_NAME(i32 %62)
  %64 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %56, i8* %61, i8* %63)
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %55, %46
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %28

70:                                               ; preds = %54, %38
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @NUM_REGS, align 4
  %73 = srem i32 %71, %72
  %74 = load i32, i32* @MIPS_NUMREGS, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @NUM_REGS, align 4
  %80 = srem i32 %78, %79
  %81 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %85

82:                                               ; preds = %70
  %83 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %84 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %76
  store i32 0, i32* %11, align 4
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %194, %85
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @NUM_REGS, align 4
  %94 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp slt i32 %92, %95
  br label %97

97:                                               ; preds = %91, %87
  %98 = phi i1 [ false, %87 ], [ %96, %91 ]
  br i1 %98, label %99, label %197

99:                                               ; preds = %97
  %100 = load i32, i32* %13, align 4
  %101 = call i8* @REGISTER_NAME(i32 %100)
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %194

106:                                              ; preds = %99
  %107 = load %struct.gdbarch*, %struct.gdbarch** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @gdbarch_register_type(%struct.gdbarch* %107, i32 %108)
  %110 = call i64 @TYPE_CODE(i32 %109)
  %111 = load i64, i64* @TYPE_CODE_FLT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %197

114:                                              ; preds = %106
  %115 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @frame_register_read(%struct.frame_info* %115, i32 %116, i8* %19)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i8* @REGISTER_NAME(i32 %121)
  %123 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %120, i8* %122)
  br label %124

124:                                              ; preds = %119, %114
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %136, %124
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %128 = call i32 @mips_regsize(%struct.gdbarch* %127)
  %129 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @register_size(%struct.gdbarch* %129, i32 %130)
  %132 = sub nsw i32 %128, %131
  %133 = icmp slt i32 %126, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = call i32 @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %125

139:                                              ; preds = %125
  %140 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %141 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %139
  %144 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @register_size(%struct.gdbarch* %144, i32 %145)
  %147 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @register_size(%struct.gdbarch* %147, i32 %148)
  %150 = sub nsw i32 %146, %149
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %165, %143
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @register_size(%struct.gdbarch* %153, i32 %154)
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %151
  %158 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %19, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %151

168:                                              ; preds = %151
  br label %189

169:                                              ; preds = %139
  %170 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @register_size(%struct.gdbarch* %170, i32 %171)
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %185, %169
  %175 = load i32, i32* %12, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %19, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %177
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %12, align 4
  br label %174

188:                                              ; preds = %174
  br label %189

189:                                              ; preds = %188, %168
  %190 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %191 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %189, %105
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %87

197:                                              ; preds = %113, %97
  %198 = load i32, i32* %11, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %202 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %13, align 4
  %205 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %205)
  ret i32 %204
}

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mips_regsize(%struct.gdbarch*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_register_read(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @register_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
