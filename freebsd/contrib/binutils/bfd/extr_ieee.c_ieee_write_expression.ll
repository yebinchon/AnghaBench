; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@ieee_variable_X_enum = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@ieee_variable_I_enum = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@ieee_variable_R_enum = common dso_local global i32 0, align 4
@IEEE_SECTION_NUMBER_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: unrecognized symbol `%s' flags 0x%x\00", align 1
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@ieee_variable_P_enum = common dso_local global i32 0, align 4
@ieee_function_minus_enum = common dso_local global i32 0, align 4
@ieee_function_plus_enum = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, %struct.TYPE_7__*, i64, i32)* @ieee_write_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_write_expression(i32* %0, i64 %1, %struct.TYPE_7__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @ieee_write_int(i32* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %6, align 8
  br label %203

22:                                               ; preds = %15
  %23 = load i32, i32* %12, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %152

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i64 @bfd_is_com_section(%struct.TYPE_8__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i64 @bfd_is_und_section(%struct.TYPE_8__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34, %28
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @ieee_variable_X_enum, align 4
  %43 = call i32 @ieee_write_byte(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ieee_write_int(i32* %46, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45, %40
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %6, align 8
  br label %203

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %151

57:                                               ; preds = %34
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @bfd_is_abs_section(%struct.TYPE_8__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %150, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BSF_GLOBAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @ieee_variable_I_enum, align 4
  %73 = call i32 @ieee_write_byte(i32* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ieee_write_int(i32* %76, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %75, %70
  %83 = load i64, i64* @FALSE, align 8
  store i64 %83, i64* %6, align 8
  br label %203

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %149

87:                                               ; preds = %63
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BSF_LOCAL, align 4
  %92 = load i32, i32* @BSF_SECTION_SYM, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %135

96:                                               ; preds = %87
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @ieee_variable_R_enum, align 4
  %99 = call i32 @ieee_write_byte(i32* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IEEE_SECTION_NUMBER_BASE, align 8
  %109 = add nsw i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ieee_write_byte(i32* %102, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %101, %96
  %114 = load i64, i64* @FALSE, align 8
  store i64 %114, i64* %6, align 8
  br label %203

115:                                              ; preds = %101
  %116 = load i32, i32* %12, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load i32*, i32** %7, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ieee_write_int(i32* %123, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = load i64, i64* @FALSE, align 8
  store i64 %130, i64* %6, align 8
  br label %203

131:                                              ; preds = %122
  %132 = load i32, i32* %12, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %131, %115
  br label %148

135:                                              ; preds = %87
  %136 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @bfd_get_filename(i32* %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = call i32 @bfd_asymbol_name(%struct.TYPE_7__* %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @_bfd_error_handler(i32 %136, i32 %138, i32 %140, i32 %143)
  %145 = load i32, i32* @bfd_error_invalid_operation, align 4
  %146 = call i32 @bfd_set_error(i32 %145)
  %147 = load i64, i64* @FALSE, align 8
  store i64 %147, i64* %6, align 8
  br label %203

148:                                              ; preds = %134
  br label %149

149:                                              ; preds = %148, %84
  br label %150

150:                                              ; preds = %149, %57
  br label %151

151:                                              ; preds = %150, %54
  br label %152

152:                                              ; preds = %151, %25
  %153 = load i64, i64* %10, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %152
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* @ieee_variable_P_enum, align 4
  %158 = call i32 @ieee_write_byte(i32* %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %11, align 4
  %163 = zext i32 %162 to i64
  %164 = load i64, i64* @IEEE_SECTION_NUMBER_BASE, align 8
  %165 = add nsw i64 %163, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @ieee_write_byte(i32* %161, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* @ieee_function_minus_enum, align 4
  %172 = call i32 @ieee_write_byte(i32* %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %169, %160, %155
  %175 = load i64, i64* @FALSE, align 8
  store i64 %175, i64* %6, align 8
  br label %203

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %152
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @ieee_write_int(i32* %181, i64 0)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* @FALSE, align 8
  store i64 %185, i64* %6, align 8
  br label %203

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %177
  br label %188

188:                                              ; preds = %198, %187
  %189 = load i32, i32* %12, align 4
  %190 = icmp ugt i32 %189, 1
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* @ieee_function_plus_enum, align 4
  %194 = call i32 @ieee_write_byte(i32* %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %191
  %197 = load i64, i64* @FALSE, align 8
  store i64 %197, i64* %6, align 8
  br label %203

198:                                              ; preds = %191
  %199 = load i32, i32* %12, align 4
  %200 = add i32 %199, -1
  store i32 %200, i32* %12, align 4
  br label %188

201:                                              ; preds = %188
  %202 = load i64, i64* @TRUE, align 8
  store i64 %202, i64* %6, align 8
  br label %203

203:                                              ; preds = %201, %196, %184, %174, %135, %129, %113, %82, %52, %20
  %204 = load i64, i64* %6, align 8
  ret i64 %204
}

declare dso_local i32 @ieee_write_int(i32*, i64) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_8__*) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_8__*) #1

declare dso_local i32 @ieee_write_byte(i32*, i32) #1

declare dso_local i32 @bfd_is_abs_section(%struct.TYPE_8__*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_asymbol_name(%struct.TYPE_7__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
