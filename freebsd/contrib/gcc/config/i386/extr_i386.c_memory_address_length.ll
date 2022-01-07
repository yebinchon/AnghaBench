; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_memory_address_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_memory_address_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ix86_address = type { i64, i64, i64 }

@PRE_DEC = common dso_local global i64 0, align 8
@POST_INC = common dso_local global i64 0, align 8
@PRE_MODIFY = common dso_local global i64 0, align 8
@POST_MODIFY = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@arg_pointer_rtx = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memory_address_length(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.ix86_address, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @GET_CODE(i64 %10)
  %12 = load i64, i64* @PRE_DEC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @GET_CODE(i64 %15)
  %17 = load i64, i64* @POST_INC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @GET_CODE(i64 %20)
  %22 = load i64, i64* @PRE_MODIFY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @GET_CODE(i64 %25)
  %27 = load i64, i64* @POST_MODIFY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %14, %1
  store i32 0, i32* %2, align 4
  br label %150

30:                                               ; preds = %24
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @ix86_decompose_address(i64 %31, %struct.ix86_address* %4)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @GET_CODE(i64 %40)
  %42 = load i64, i64* @SUBREG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @SUBREG_REG(i64 %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %38, %30
  %51 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  %58 = load i64, i64* @SUBREG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @SUBREG_REG(i64 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %54, %50
  %67 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %5, align 8
  %69 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  %71 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %4, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %66
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @stack_pointer_rtx, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* @arg_pointer_rtx, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @frame_pointer_rtx, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89, %85, %81
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %93
  br label %148

99:                                               ; preds = %78, %75, %66
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i64, i64* %5, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 4, i32* %8, align 4
  br label %147

109:                                              ; preds = %105, %102, %99
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i64, i64* %5, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = call i64 @satisfies_constraint_K(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, i32* %8, align 4
  br label %121

120:                                              ; preds = %115, %112
  store i32 4, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %119
  br label %128

122:                                              ; preds = %109
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 1, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %122
  br label %128

128:                                              ; preds = %127, %121
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @stack_pointer_rtx, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @arg_pointer_rtx, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i64, i64* %5, align 8
  %141 = load i64, i64* @frame_pointer_rtx, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139, %135, %131, %128
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %146, %108
  br label %148

148:                                              ; preds = %147, %98
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %29
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @ix86_decompose_address(i64, %struct.ix86_address*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @SUBREG_REG(i64) #1

declare dso_local i64 @satisfies_constraint_K(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
