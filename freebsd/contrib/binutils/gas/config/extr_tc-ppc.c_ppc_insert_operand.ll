; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_insert_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_ppc_insert_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_operand = type { i64, i32, i64 (i64, i64, i32, i8**)*, i64 }

@PPC_OPERAND_SIGNED = common dso_local global i32 0, align 4
@PPC_OPERAND_SIGNOPT = common dso_local global i32 0, align 4
@PPC_OPERAND_PLUS1 = common dso_local global i32 0, align 4
@PPC_OPERAND_NEGATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@ppc_cpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.powerpc_operand*, i64, i8*, i32)* @ppc_insert_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ppc_insert_operand(i64 %0, %struct.powerpc_operand* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.powerpc_operand*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.powerpc_operand* %1, %struct.powerpc_operand** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %17 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = sub nsw i64 0, %20
  %22 = and i64 %19, %21
  store i64 %22, i64* %13, align 8
  store i64 0, i64* %11, align 8
  %23 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %24 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PPC_OPERAND_SIGNED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %5
  %30 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %31 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PPC_OPERAND_SIGNOPT, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i64, i64* %12, align 8
  %38 = ashr i64 %37, 1
  %39 = load i64, i64* %13, align 8
  %40 = sub nsw i64 0, %39
  %41 = and i64 %38, %40
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %36, %29
  %43 = load i64, i64* %12, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %13, align 8
  %46 = sub nsw i64 0, %45
  %47 = and i64 %44, %46
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %42, %5
  %49 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %50 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PPC_OPERAND_PLUS1, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %60 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PPC_OPERAND_NEGATIVE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %12, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %14, align 8
  %70 = sub nsw i64 0, %69
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %65, %58
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %156

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = sub nsw i64 %80, 2147483648
  %82 = sub nsw i64 %81, 2147483648
  %83 = load i64, i64* %11, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %79
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %86, 2147483648
  %88 = sub nsw i64 %87, 2147483648
  %89 = load i64, i64* %12, align 8
  %90 = icmp sle i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = sub nsw i64 %92, 2147483648
  %94 = sub nsw i64 %93, 2147483648
  %95 = load i64, i64* %13, align 8
  %96 = sub nsw i64 %95, 1
  %97 = and i64 %94, %96
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i64, i64* %8, align 8
  %101 = sub nsw i64 %100, 2147483648
  %102 = sub nsw i64 %101, 2147483648
  store i64 %102, i64* %8, align 8
  br label %155

103:                                              ; preds = %91, %85, %79, %75
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %108, 2147483648
  %110 = add nsw i64 %109, 2147483648
  %111 = load i64, i64* %11, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %114, 2147483648
  %116 = add nsw i64 %115, 2147483648
  %117 = load i64, i64* %12, align 8
  %118 = icmp sle i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load i64, i64* %8, align 8
  %121 = add nsw i64 %120, 2147483648
  %122 = add nsw i64 %121, 2147483648
  %123 = load i64, i64* %13, align 8
  %124 = sub nsw i64 %123, 1
  %125 = and i64 %122, %124
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i64, i64* %8, align 8
  %129 = add nsw i64 %128, 2147483648
  %130 = add nsw i64 %129, 2147483648
  store i64 %130, i64* %8, align 8
  br label %154

131:                                              ; preds = %119, %113, %107, %103
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %11, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %145, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %12, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* %13, align 8
  %142 = sub nsw i64 %141, 1
  %143 = and i64 %140, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %139, %135, %131
  %146 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @as_bad_value_out_of_range(i32 %146, i64 %147, i64 %148, i64 %149, i8* %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %139
  br label %154

154:                                              ; preds = %153, %127
  br label %155

155:                                              ; preds = %154, %99
  br label %156

156:                                              ; preds = %155, %71
  %157 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %158 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %157, i32 0, i32 2
  %159 = load i64 (i64, i64, i32, i8**)*, i64 (i64, i64, i32, i8**)** %158, align 8
  %160 = icmp ne i64 (i64, i64, i32, i8**)* %159, null
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  store i8* null, i8** %15, align 8
  %162 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %163 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %162, i32 0, i32 2
  %164 = load i64 (i64, i64, i32, i8**)*, i64 (i64, i64, i32, i8**)** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i32, i32* @ppc_cpu, align 4
  %168 = call i64 %164(i64 %165, i64 %166, i32 %167, i8** %15)
  store i64 %168, i64* %6, align 8
  %169 = load i8*, i8** %15, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %161
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i8*, i8** %15, align 8
  %175 = call i32 @as_bad_where(i8* %172, i32 %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %171, %161
  br label %189

177:                                              ; preds = %156
  %178 = load i64, i64* %8, align 8
  %179 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %180 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = and i64 %178, %181
  %183 = load %struct.powerpc_operand*, %struct.powerpc_operand** %7, align 8
  %184 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = shl i64 %182, %185
  %187 = load i64, i64* %6, align 8
  %188 = or i64 %187, %186
  store i64 %188, i64* %6, align 8
  br label %189

189:                                              ; preds = %177, %176
  %190 = load i64, i64* %6, align 8
  ret i64 %190
}

declare dso_local i32 @as_bad_value_out_of_range(i32, i64, i64, i64, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_bad_where(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
