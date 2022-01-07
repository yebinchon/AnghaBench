; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_oprs_unchanged_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_oprs_unchanged_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_avail_info = type { i32, i32, i32 }

@reg_avail_info = common dso_local global %struct.reg_avail_info* null, align 8
@current_bb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @oprs_unchanged_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oprs_unchanged_p(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.reg_avail_info*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %142

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @GET_CODE(i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %67 [
    i32 129, label %20
    i32 137, label %50
    i32 132, label %65
    i32 131, label %65
    i32 135, label %65
    i32 134, label %65
    i32 130, label %65
    i32 133, label %65
    i32 136, label %66
    i32 143, label %66
    i32 142, label %66
    i32 140, label %66
    i32 141, label %66
    i32 139, label %66
    i32 128, label %66
    i32 138, label %66
    i32 144, label %66
    i32 145, label %66
  ]

20:                                               ; preds = %16
  %21 = load %struct.reg_avail_info*, %struct.reg_avail_info** @reg_avail_info, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @REGNO(i64 %22)
  %24 = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %21, i64 %23
  store %struct.reg_avail_info* %24, %struct.reg_avail_info** %12, align 8
  %25 = load %struct.reg_avail_info*, %struct.reg_avail_info** %12, align 8
  %26 = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @current_bb, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %142

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.reg_avail_info*, %struct.reg_avail_info** %12, align 8
  %36 = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @INSN_CUID(i64 %38)
  %40 = icmp slt i32 %37, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %142

42:                                               ; preds = %31
  %43 = load %struct.reg_avail_info*, %struct.reg_avail_info** %12, align 8
  %44 = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @INSN_CUID(i64 %46)
  %48 = icmp sge i32 %45, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %142

50:                                               ; preds = %16
  %51 = load i32, i32* @current_bb, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @INSN_CUID(i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @load_killed_in_block_p(i32 %51, i32 %53, i64 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %142

59:                                               ; preds = %50
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @XEXP(i64 %60, i32 0)
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @oprs_unchanged_p(i64 %61, i64 %62, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %142

65:                                               ; preds = %16, %16, %16, %16, %16, %16
  store i32 0, i32* %4, align 4
  br label %142

66:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  store i32 1, i32* %4, align 4
  br label %142

67:                                               ; preds = %16
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @GET_RTX_LENGTH(i32 %69)
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @GET_RTX_FORMAT(i32 %72)
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %138, %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %141

77:                                               ; preds = %74
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 101
  br i1 %84, label %85, label %106

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i64, i64* %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @XEXP(i64 %89, i32 %90)
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @oprs_unchanged_p(i64 %91, i64 %92, i32 %93)
  store i32 %94, i32* %4, align 4
  br label %142

95:                                               ; preds = %85
  %96 = load i64, i64* %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @XEXP(i64 %96, i32 %97)
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @oprs_unchanged_p(i64 %98, i64 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %142

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  br label %137

106:                                              ; preds = %77
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 69
  br i1 %113, label %114, label %136

114:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %132, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i64, i64* %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @XVECLEN(i64 %117, i32 %118)
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %115
  %122 = load i64, i64* %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i64 @XVECEXP(i64 %122, i32 %123, i32 %124)
  %126 = load i64, i64* %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @oprs_unchanged_p(i64 %125, i64 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %142

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %115

135:                                              ; preds = %115
  br label %136

136:                                              ; preds = %135, %106
  br label %137

137:                                              ; preds = %136, %105
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %8, align 4
  br label %74

141:                                              ; preds = %74
  store i32 1, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %130, %103, %88, %66, %65, %59, %58, %42, %34, %30, %15
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @INSN_CUID(i64) #1

declare dso_local i32 @load_killed_in_block_p(i32, i32, i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
