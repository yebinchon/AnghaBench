; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_default_print_registers_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_default_print_registers_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.frame_info = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@all_reggroup = common dso_local global i32 0, align 4
@general_reggroup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"*value not available*\0A\00", align 1
@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@Val_pretty_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\09(raw 0x\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_print_registers_info(%struct.gdbarch* %0, %struct.ui_file* %1, %struct.frame_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gdbarch*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca %struct.frame_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store %struct.frame_info* %2, %struct.frame_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @NUM_REGS, align 4
  %20 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %29 = call i64 (...) @DEPRECATED_DO_REGISTERS_INFO_P()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @DEPRECATED_DO_REGISTERS_INFO(i32 %32, i32 %33)
  store i32 1, i32* %16, align 4
  br label %191

35:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %187, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %190

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @all_reggroup, align 4
  %50 = call i32 @gdbarch_register_reggroup_p(%struct.gdbarch* %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %187

53:                                               ; preds = %46
  br label %62

54:                                               ; preds = %43
  %55 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @general_reggroup, align 4
  %58 = call i32 @gdbarch_register_reggroup_p(%struct.gdbarch* %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %187

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %53
  br label %69

63:                                               ; preds = %40
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %187

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %11, align 4
  %71 = call i8* @REGISTER_NAME(i32 %70)
  %72 = icmp eq i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = call i8* @REGISTER_NAME(i32 %74)
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %69
  br label %187

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @REGISTER_NAME(i32 %81)
  %83 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %84 = call i32 @fputs_filtered(i8* %82, %struct.ui_file* %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @REGISTER_NAME(i32 %85)
  %87 = call i64 @strlen(i8* %86)
  %88 = sub nsw i64 15, %87
  %89 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %90 = call i32 @print_spaces_filtered(i64 %88, %struct.ui_file* %89)
  %91 = load %struct.frame_info*, %struct.frame_info** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @frame_register_read(%struct.frame_info* %91, i32 %92, i8* %25)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %80
  %96 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %97 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %187

98:                                               ; preds = %80
  %99 = call i64 (...) @DEPRECATED_REGISTER_CONVERTIBLE_P()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = call i64 @DEPRECATED_REGISTER_CONVERTIBLE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @current_gdbarch, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @register_type(i32 %107, i32 %108)
  %110 = call i32 @DEPRECATED_REGISTER_CONVERT_TO_VIRTUAL(i32 %106, i32 %109, i8* %25, i8* %28)
  br label %115

111:                                              ; preds = %101, %98
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @DEPRECATED_REGISTER_VIRTUAL_SIZE(i32 %112)
  %114 = call i32 @memcpy(i8* %28, i8* %25, i32 %113)
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32, i32* @current_gdbarch, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @register_type(i32 %116, i32 %117)
  %119 = call i64 @TYPE_CODE(i32 %118)
  %120 = load i64, i64* @TYPE_CODE_FLT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %162

122:                                              ; preds = %115
  %123 = load i32, i32* @current_gdbarch, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @register_type(i32 %123, i32 %124)
  %126 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %127 = load i32, i32* @Val_pretty_default, align 4
  %128 = call i32 @val_print(i32 %125, i8* %28, i32 0, i32 0, %struct.ui_file* %126, i8 signext 0, i32 1, i32 0, i32 %127)
  %129 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %130 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %156, %122
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %133)
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %131
  %137 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %138 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %17, align 4
  store i32 %141, i32* %18, align 4
  br label %148

142:                                              ; preds = %136
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %143)
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* %17, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %142, %140
  %149 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %25, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %17, align 4
  br label %131

159:                                              ; preds = %131
  %160 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %161 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %184

162:                                              ; preds = %115
  %163 = load i32, i32* @current_gdbarch, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @register_type(i32 %163, i32 %164)
  %166 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %167 = load i32, i32* @Val_pretty_default, align 4
  %168 = call i32 @val_print(i32 %165, i8* %28, i32 0, i32 0, %struct.ui_file* %166, i8 signext 120, i32 1, i32 0, i32 %167)
  %169 = load i32, i32* @current_gdbarch, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @register_type(i32 %169, i32 %170)
  %172 = call i64 @TYPE_VECTOR(i32 %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %162
  %175 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %176 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %177 = load i32, i32* @current_gdbarch, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @register_type(i32 %177, i32 %178)
  %180 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %181 = load i32, i32* @Val_pretty_default, align 4
  %182 = call i32 @val_print(i32 %179, i8* %28, i32 0, i32 0, %struct.ui_file* %180, i8 signext 0, i32 1, i32 0, i32 %181)
  br label %183

183:                                              ; preds = %174, %162
  br label %184

184:                                              ; preds = %183, %159
  %185 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %186 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %187

187:                                              ; preds = %184, %95, %79, %67, %60, %52
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %36

190:                                              ; preds = %36
  store i32 0, i32* %16, align 4
  br label %191

191:                                              ; preds = %190, %31
  %192 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %16, align 4
  switch i32 %193, label %195 [
    i32 0, label %194
    i32 1, label %194
  ]

194:                                              ; preds = %191, %191
  ret void

195:                                              ; preds = %191
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @DEPRECATED_DO_REGISTERS_INFO_P(...) #2

declare dso_local i32 @DEPRECATED_DO_REGISTERS_INFO(i32, i32) #2

declare dso_local i32 @gdbarch_register_reggroup_p(%struct.gdbarch*, i32, i32) #2

declare dso_local i8* @REGISTER_NAME(i32) #2

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #2

declare dso_local i32 @print_spaces_filtered(i64, %struct.ui_file*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @frame_register_read(%struct.frame_info*, i32, i8*) #2

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #2

declare dso_local i64 @DEPRECATED_REGISTER_CONVERTIBLE_P(...) #2

declare dso_local i64 @DEPRECATED_REGISTER_CONVERTIBLE(i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_CONVERT_TO_VIRTUAL(i32, i32, i8*, i8*) #2

declare dso_local i32 @register_type(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_VIRTUAL_SIZE(i32) #2

declare dso_local i64 @TYPE_CODE(i32) #2

declare dso_local i32 @val_print(i32, i8*, i32, i32, %struct.ui_file*, i8 signext, i32, i32, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i64 @TYPE_VECTOR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
