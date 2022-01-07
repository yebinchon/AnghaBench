; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_registers_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_registers_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroup = type { i32 }

@target_has_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"The program has no registers now.\00", align 1
@deprecated_selected_frame = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"No selected frame.\00", align 1
@current_gdbarch = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Missing register name\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid register `%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registers_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.reggroup*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @target_has_registers, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32*, i32** @deprecated_selected_frame, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @current_gdbarch, align 4
  %29 = load i32, i32* @gdb_stdout, align 4
  %30 = load i32*, i32** @deprecated_selected_frame, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @gdbarch_print_registers_info(i32 %28, i32 %29, i32* %30, i32 -1, i32 %31)
  br label %189

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %180, %179, %121, %99, %44, %33
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %189

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  br label %34

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 36
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isspace(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %56
  %67 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i8*, i8** %3, align 8
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %83, %68
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isspace(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %3, align 8
  br label %70

86:                                               ; preds = %81
  %87 = load i8*, i8** %3, align 8
  store i8* %87, i8** %9, align 8
  %88 = load i32*, i32** @deprecated_selected_frame, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @frame_map_name_to_regnum(i32* %88, i8* %89, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %86
  %100 = load i32, i32* @current_gdbarch, align 4
  %101 = load i32, i32* @gdb_stdout, align 4
  %102 = load i32*, i32** @deprecated_selected_frame, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @gdbarch_print_registers_info(i32 %100, i32 %101, i32* %102, i32 %103, i32 %104)
  br label %34

106:                                              ; preds = %86
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @strtol(i8* %107, i8** %11, i32 0)
  store i32 %108, i32* %12, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = icmp eq i8* %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load i32, i32* %12, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @NUM_REGS, align 4
  %118 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %119 = add nsw i32 %117, %118
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* @current_gdbarch, align 4
  %123 = load i32, i32* @gdb_stdout, align 4
  %124 = load i32*, i32** @deprecated_selected_frame, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @gdbarch_print_registers_info(i32 %122, i32 %123, i32* %124, i32 %125, i32 %126)
  br label %34

128:                                              ; preds = %115, %112, %106
  %129 = load i32, i32* @current_gdbarch, align 4
  %130 = call %struct.reggroup* @reggroup_next(i32 %129, %struct.reggroup* null)
  store %struct.reggroup* %130, %struct.reggroup** %13, align 8
  br label %131

131:                                              ; preds = %148, %128
  %132 = load %struct.reggroup*, %struct.reggroup** %13, align 8
  %133 = icmp ne %struct.reggroup* %132, null
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i8*, i8** %8, align 8
  %136 = load %struct.reggroup*, %struct.reggroup** %13, align 8
  %137 = call i32 @reggroup_name(%struct.reggroup* %136)
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  %144 = call i64 @strncmp(i8* %135, i32 %137, i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %152

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* @current_gdbarch, align 4
  %150 = load %struct.reggroup*, %struct.reggroup** %13, align 8
  %151 = call %struct.reggroup* @reggroup_next(i32 %149, %struct.reggroup* %150)
  store %struct.reggroup* %151, %struct.reggroup** %13, align 8
  br label %131

152:                                              ; preds = %146, %131
  %153 = load %struct.reggroup*, %struct.reggroup** %13, align 8
  %154 = icmp ne %struct.reggroup* %153, null
  br i1 %154, label %155, label %180

155:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  br label %156

156:                                              ; preds = %176, %155
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @NUM_REGS, align 4
  %159 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %160 = add nsw i32 %158, %159
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %156
  %163 = load i32, i32* @current_gdbarch, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.reggroup*, %struct.reggroup** %13, align 8
  %166 = call i64 @gdbarch_register_reggroup_p(i32 %163, i32 %164, %struct.reggroup* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load i32, i32* @current_gdbarch, align 4
  %170 = load i32, i32* @gdb_stdout, align 4
  %171 = load i32*, i32** @deprecated_selected_frame, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @gdbarch_print_registers_info(i32 %169, i32 %170, i32* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %168, %162
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %156

179:                                              ; preds = %156
  br label %34

180:                                              ; preds = %152
  %181 = load i8*, i8** %9, align 8
  %182 = load i8*, i8** %8, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %186, i8* %187)
  br label %34

189:                                              ; preds = %27, %34
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @gdbarch_print_registers_info(i32, i32, i32*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @frame_map_name_to_regnum(i32*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.reggroup* @reggroup_next(i32, %struct.reggroup*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @reggroup_name(%struct.reggroup*) #1

declare dso_local i64 @gdbarch_register_reggroup_p(i32, i32, %struct.reggroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
