; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_lookup_struct_elt_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_lookup_struct_elt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Type \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" is not a structure or union type\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" has no component named \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_lookup_struct_elt_type(%struct.type* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %173

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %33
  %21 = load %struct.type*, %struct.type** %6, align 8
  %22 = call i32 @CHECK_TYPEDEF(%struct.type* %21)
  %23 = load %struct.type*, %struct.type** %6, align 8
  %24 = call i64 @TYPE_CODE(%struct.type* %23)
  %25 = load i64, i64* @TYPE_CODE_PTR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.type*, %struct.type** %6, align 8
  %29 = call i64 @TYPE_CODE(%struct.type* %28)
  %30 = load i64, i64* @TYPE_CODE_REF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %27, %20
  %34 = load %struct.type*, %struct.type** %6, align 8
  %35 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %34)
  store %struct.type* %35, %struct.type** %6, align 8
  br label %20

36:                                               ; preds = %32
  %37 = load %struct.type*, %struct.type** %6, align 8
  %38 = call i64 @TYPE_CODE(%struct.type* %37)
  %39 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.type*, %struct.type** %6, align 8
  %43 = call i64 @TYPE_CODE(%struct.type* %42)
  %44 = load i64, i64* @TYPE_CODE_UNION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = call i32 (...) @target_terminal_ours()
  %48 = load i32, i32* @gdb_stdout, align 4
  %49 = call i32 @gdb_flush(i32 %48)
  %50 = load i32, i32* @gdb_stderr, align 4
  %51 = call i32 @fprintf_unfiltered(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.type*, %struct.type** %6, align 8
  %53 = load i32, i32* @gdb_stderr, align 4
  %54 = call i32 @type_print(%struct.type* %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 -1)
  %55 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %46, %41, %36
  %57 = load %struct.type*, %struct.type** %6, align 8
  %58 = call %struct.type* @to_static_fixed_type(%struct.type* %57)
  store %struct.type* %58, %struct.type** %6, align 8
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %169, %56
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.type*, %struct.type** %6, align 8
  %62 = call i32 @TYPE_NFIELDS(%struct.type* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %172

64:                                               ; preds = %59
  %65 = load %struct.type*, %struct.type** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i8* @TYPE_FIELD_NAME(%struct.type* %65, i32 %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %169

71:                                               ; preds = %64
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @field_name_match(i8* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.type*, %struct.type** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %80, i32 %81)
  %83 = sdiv i32 %82, 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %79, %76
  %88 = load %struct.type*, %struct.type** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %88, i32 %89)
  %91 = call %struct.type* @check_typedef(%struct.type* %90)
  store %struct.type* %91, %struct.type** %5, align 8
  br label %196

92:                                               ; preds = %71
  %93 = load %struct.type*, %struct.type** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @ada_is_wrapper_field(%struct.type* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  store i32 0, i32* %13, align 4
  %98 = load %struct.type*, %struct.type** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %98, i32 %99)
  %101 = load i8*, i8** %7, align 8
  %102 = call %struct.type* @ada_lookup_struct_elt_type(%struct.type* %100, i8* %101, i32 1, i32* %13)
  store %struct.type* %102, %struct.type** %12, align 8
  %103 = load %struct.type*, %struct.type** %12, align 8
  %104 = icmp ne %struct.type* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %97
  %106 = load i32*, i32** %9, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.type*, %struct.type** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %110, i32 %111)
  %113 = sdiv i32 %112, 8
  %114 = add nsw i32 %109, %113
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %108, %105
  %119 = load %struct.type*, %struct.type** %12, align 8
  store %struct.type* %119, %struct.type** %5, align 8
  br label %196

120:                                              ; preds = %97
  br label %166

121:                                              ; preds = %92
  %122 = load %struct.type*, %struct.type** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i64 @ada_is_variant_part(%struct.type* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %165

126:                                              ; preds = %121
  %127 = load %struct.type*, %struct.type** %6, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %127, i32 %128)
  %130 = call %struct.type* @check_typedef(%struct.type* %129)
  store %struct.type* %130, %struct.type** %15, align 8
  %131 = load %struct.type*, %struct.type** %15, align 8
  %132 = call i32 @TYPE_NFIELDS(%struct.type* %131)
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %161, %126
  %135 = load i32, i32* %14, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %134
  store i32 0, i32* %13, align 4
  %138 = load %struct.type*, %struct.type** %15, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %138, i32 %139)
  %141 = load i8*, i8** %7, align 8
  %142 = call %struct.type* @ada_lookup_struct_elt_type(%struct.type* %140, i8* %141, i32 1, i32* %13)
  store %struct.type* %142, %struct.type** %12, align 8
  %143 = load %struct.type*, %struct.type** %12, align 8
  %144 = icmp ne %struct.type* %143, null
  br i1 %144, label %145, label %160

145:                                              ; preds = %137
  %146 = load i32*, i32** %9, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.type*, %struct.type** %6, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %150, i32 %151)
  %153 = sdiv i32 %152, 8
  %154 = add nsw i32 %149, %153
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %154
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %148, %145
  %159 = load %struct.type*, %struct.type** %12, align 8
  store %struct.type* %159, %struct.type** %5, align 8
  br label %196

160:                                              ; preds = %137
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %134

164:                                              ; preds = %134
  br label %165

165:                                              ; preds = %164, %121
  br label %166

166:                                              ; preds = %165, %120
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168, %70
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %59

172:                                              ; preds = %59
  br label %173

173:                                              ; preds = %172, %18
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %195, label %176

176:                                              ; preds = %173
  %177 = call i32 (...) @target_terminal_ours()
  %178 = load i32, i32* @gdb_stdout, align 4
  %179 = call i32 @gdb_flush(i32 %178)
  %180 = load i32, i32* @gdb_stderr, align 4
  %181 = call i32 @fprintf_unfiltered(i32 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %182 = load %struct.type*, %struct.type** %6, align 8
  %183 = load i32, i32* @gdb_stderr, align 4
  %184 = call i32 @type_print(%struct.type* %182, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 -1)
  %185 = load i32, i32* @gdb_stderr, align 4
  %186 = call i32 @fprintf_unfiltered(i32 %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %187 = load i8*, i8** %7, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  br label %192

190:                                              ; preds = %176
  %191 = load i8*, i8** %7, align 8
  br label %192

192:                                              ; preds = %190, %189
  %193 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %189 ], [ %191, %190 ]
  %194 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %192, %173
  store %struct.type* null, %struct.type** %5, align 8
  br label %196

196:                                              ; preds = %195, %158, %118, %87
  %197 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %197
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.type* @to_static_fixed_type(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @field_name_match(i8*, i8*) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @ada_is_wrapper_field(%struct.type*, i32) #1

declare dso_local i64 @ada_is_variant_part(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
