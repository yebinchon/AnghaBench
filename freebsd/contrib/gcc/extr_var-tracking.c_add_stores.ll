; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_add_stores.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_add_stores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@CLOBBER = common dso_local global i64 0, align 8
@MO_CLOBBER = common dso_local global i8* null, align 8
@SET = common dso_local global i64 0, align 8
@MO_COPY = common dso_local global i8* null, align 8
@MO_SET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*)* @add_stores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_stores(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @REG_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %89

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i32 @BLOCK_FOR_INSN(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_6__* @VTI(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_6__* @VTI(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %27
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @GET_CODE(i64 %29)
  %31 = load i64, i64* @CLOBBER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %14
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @REG_EXPR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @REG_EXPR(i64 %38)
  %40 = call i64 @track_expr_p(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @REG_OFFSET(i64 %43)
  %45 = call i64 @offset_valid_for_tracked_p(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %37, %33, %14
  %48 = load i8*, i8** @MO_CLOBBER, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %79

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @GET_CODE(i64 %52)
  %54 = load i64, i64* @SET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @SET_DEST(i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @SET_SRC(i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @REG_EXPR(i64 %64)
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @REG_OFFSET(i64 %66)
  %68 = call i64 @same_variable_part_p(i32 %63, i64 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i8*, i8** @MO_COPY, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %61, %56, %51
  %75 = load i8*, i8** @MO_SET, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = call i8* @NEXT_INSN(i64 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %169

89:                                               ; preds = %3
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @MEM_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %168

93:                                               ; preds = %89
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @MEM_EXPR(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %168

97:                                               ; preds = %93
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @MEM_EXPR(i64 %98)
  %100 = call i64 @track_expr_p(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %168

102:                                              ; preds = %97
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @INT_MEM_OFFSET(i64 %103)
  %105 = call i64 @offset_valid_for_tracked_p(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %168

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = call i32 @BLOCK_FOR_INSN(i64 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call %struct.TYPE_6__* @VTI(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call %struct.TYPE_6__* @VTI(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %120
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %10, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i64 @GET_CODE(i64 %122)
  %124 = load i64, i64* @CLOBBER, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %107
  %127 = load i8*, i8** @MO_CLOBBER, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %158

130:                                              ; preds = %107
  %131 = load i64, i64* %5, align 8
  %132 = call i64 @GET_CODE(i64 %131)
  %133 = load i64, i64* @SET, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = load i64, i64* %5, align 8
  %137 = call i64 @SET_DEST(i64 %136)
  %138 = load i64, i64* %4, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @SET_SRC(i64 %141)
  %143 = load i64, i64* %4, align 8
  %144 = call i64 @MEM_EXPR(i64 %143)
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @INT_MEM_OFFSET(i64 %145)
  %147 = call i64 @same_variable_part_p(i32 %142, i64 %144, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load i8*, i8** @MO_COPY, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %157

153:                                              ; preds = %140, %135, %130
  %154 = load i8*, i8** @MO_SET, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %153, %149
  br label %158

158:                                              ; preds = %157, %126
  %159 = load i64, i64* %4, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = call i8* @NEXT_INSN(i64 %164)
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  br label %168

168:                                              ; preds = %158, %102, %97, %93, %89
  br label %169

169:                                              ; preds = %168, %79
  ret void
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @BLOCK_FOR_INSN(i64) #1

declare dso_local %struct.TYPE_6__* @VTI(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REG_EXPR(i64) #1

declare dso_local i64 @track_expr_p(i64) #1

declare dso_local i64 @offset_valid_for_tracked_p(i32) #1

declare dso_local i32 @REG_OFFSET(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @same_variable_part_p(i32, i64, i32) #1

declare dso_local i32 @SET_SRC(i64) #1

declare dso_local i8* @NEXT_INSN(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @MEM_EXPR(i64) #1

declare dso_local i32 @INT_MEM_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
