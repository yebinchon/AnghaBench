; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_find_base_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_find_base_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.elt_loc_list* }
%struct.elt_loc_list = type { i32, %struct.elt_loc_list* }

@Pmode = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@ADDRESS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_base_term(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.elt_loc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  switch i32 %10, label %188 [
    i32 133, label %11
    i32 130, label %14
    i32 144, label %23
    i32 135, label %23
    i32 136, label %23
    i32 138, label %23
    i32 139, label %23
    i32 134, label %23
    i32 137, label %23
    i32 128, label %27
    i32 132, label %27
    i32 129, label %43
    i32 145, label %70
    i32 142, label %82
    i32 140, label %82
    i32 141, label %82
    i32 146, label %170
    i32 131, label %186
    i32 143, label %186
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @REG_BASE_VALUE(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %189

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @GET_MODE(i32 %15)
  %17 = call i32 @GET_MODE_SIZE(i32 %16)
  %18 = load i32, i32* @Pmode, align 4
  %19 = call i32 @GET_MODE_SIZE(i32 %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %189

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %22
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @XEXP(i32 %24, i32 0)
  %26 = call i32 @find_base_term(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %189

27:                                               ; preds = %1, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  %30 = call i32 @find_base_term(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @CONSTANT_P(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @Pmode, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @convert_memory_address(i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %33, %27
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %189

43:                                               ; preds = %1
  %44 = load i32, i32* %3, align 4
  %45 = call %struct.TYPE_3__* @CSELIB_VAL_PTR(i32 %44)
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %189

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.elt_loc_list*, %struct.elt_loc_list** %51, align 8
  store %struct.elt_loc_list* %52, %struct.elt_loc_list** %5, align 8
  br label %53

53:                                               ; preds = %65, %49
  %54 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %55 = icmp ne %struct.elt_loc_list* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %58 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @find_base_term(i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %3, align 4
  store i32 %63, i32* %2, align 4
  br label %189

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.elt_loc_list*, %struct.elt_loc_list** %5, align 8
  %67 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %66, i32 0, i32 1
  %68 = load %struct.elt_loc_list*, %struct.elt_loc_list** %67, align 8
  store %struct.elt_loc_list* %68, %struct.elt_loc_list** %5, align 8
  br label %53

69:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %189

70:                                               ; preds = %1
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @XEXP(i32 %71, i32 0)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @GET_CODE(i32 %73)
  %75 = icmp ne i32 %74, 140
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @GET_CODE(i32 %77)
  %79 = icmp ne i32 %78, 141
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %189

81:                                               ; preds = %76, %70
  br label %82

82:                                               ; preds = %1, %1, %1, %81
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @XEXP(i32 %83, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @XEXP(i32 %85, i32 1)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @pic_offset_table_rtx, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @CONSTANT_P(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @find_base_term(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %189

97:                                               ; preds = %90, %82
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @REG_P(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @REG_POINTER(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @find_base_term(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %189

108:                                              ; preds = %101, %97
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @REG_P(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @REG_POINTER(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @find_base_term(i32 %117)
  store i32 %118, i32* %2, align 4
  br label %189

119:                                              ; preds = %112, %108
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @find_base_term(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @find_base_term(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @GET_CODE(i32 %127)
  %129 = icmp eq i32 %128, 131
  br i1 %129, label %144, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @GET_CODE(i32 %131)
  %133 = icmp eq i32 %132, 143
  br i1 %133, label %144, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @GET_CODE(i32 %135)
  %137 = load i32, i32* @ADDRESS, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @GET_MODE(i32 %140)
  %142 = load i32, i32* @VOIDmode, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139, %130, %126
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %189

146:                                              ; preds = %139, %134, %119
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @GET_CODE(i32 %150)
  %152 = icmp eq i32 %151, 131
  br i1 %152, label %167, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @GET_CODE(i32 %154)
  %156 = icmp eq i32 %155, 143
  br i1 %156, label %167, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @GET_CODE(i32 %158)
  %160 = load i32, i32* @ADDRESS, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @GET_MODE(i32 %163)
  %165 = load i32, i32* @VOIDmode, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %162, %153, %149
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %2, align 4
  br label %189

169:                                              ; preds = %162, %157, %146
  store i32 0, i32* %2, align 4
  br label %189

170:                                              ; preds = %1
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @XEXP(i32 %171, i32 1)
  %173 = call i32 @GET_CODE(i32 %172)
  %174 = load i32, i32* @CONST_INT, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @XEXP(i32 %177, i32 1)
  %179 = call i32 @INTVAL(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @XEXP(i32 %182, i32 0)
  %184 = call i32 @find_base_term(i32 %183)
  store i32 %184, i32* %2, align 4
  br label %189

185:                                              ; preds = %176, %170
  store i32 0, i32* %2, align 4
  br label %189

186:                                              ; preds = %1, %1
  %187 = load i32, i32* %3, align 4
  store i32 %187, i32* %2, align 4
  br label %189

188:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %186, %185, %181, %169, %167, %144, %116, %105, %94, %80, %69, %62, %48, %41, %23, %21, %11
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REG_BASE_VALUE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i32 @convert_memory_address(i32, i32) #1

declare dso_local %struct.TYPE_3__* @CSELIB_VAL_PTR(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REG_POINTER(i32) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
