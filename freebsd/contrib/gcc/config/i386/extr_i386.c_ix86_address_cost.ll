; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_address_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_address_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ix86_address = type { i64, i64, i64, i64, i32 }

@SUBREG = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@SEG_DEFAULT = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@TARGET_K6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ix86_address_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_address_cost(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ix86_address, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @ix86_decompose_address(i32 %6, %struct.ix86_address* %3)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @GET_CODE(i64 %15)
  %17 = load i64, i64* @SUBREG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @SUBREG_REG(i64 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %13, %1
  %26 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @GET_CODE(i64 %31)
  %33 = load i64, i64* @SUBREG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @SUBREG_REG(i64 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %29, %25
  %42 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @const0_rtx, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %45, %41
  %54 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SEG_DEFAULT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @REG_P(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @REGNO(i64 %72)
  %74 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %70, %61
  %77 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @REG_P(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @REGNO(i64 %87)
  %89 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %80, %70, %65
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %85, %76
  %95 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %133

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @REG_P(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @REGNO(i64 %105)
  %107 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %103, %98
  %110 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @REG_P(i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @REGNO(i64 %120)
  %122 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118, %113
  %125 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %124, %118, %109, %103, %94
  %134 = load i64, i64* @TARGET_K6, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %187

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %184, label %152

152:                                              ; preds = %148, %144, %140, %136
  %153 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %184, label %168

168:                                              ; preds = %164, %160, %156, %152
  %169 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %187, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %3, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %187

184:                                              ; preds = %180, %164, %148
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 10
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %184, %180, %176, %172, %168, %133
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @ix86_decompose_address(i32, %struct.ix86_address*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i8* @SUBREG_REG(i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
