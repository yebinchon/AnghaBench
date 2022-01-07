; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_u32.c_u32_match_it.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_u32.c_u32_match_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_u32 = type { i32, %struct.xt_u32_test* }
%struct.xt_u32_test = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_u32*, %struct.sk_buff*)* @u32_match_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_match_it(%struct.xt_u32* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_u32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_u32_test*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xt_u32* %0, %struct.xt_u32** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %185, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.xt_u32*, %struct.xt_u32** %4, align 8
  %19 = getelementptr inbounds %struct.xt_u32, %struct.xt_u32* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %188

22:                                               ; preds = %16
  %23 = load %struct.xt_u32*, %struct.xt_u32** %4, align 8
  %24 = getelementptr inbounds %struct.xt_u32, %struct.xt_u32* %23, i32 0, i32 1
  %25 = load %struct.xt_u32_test*, %struct.xt_u32_test** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %25, i64 %27
  store %struct.xt_u32_test* %28, %struct.xt_u32_test** %6, align 8
  store i32 0, i32* %14, align 4
  %29 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %30 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %46, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 4
  %45 = icmp sgt i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %22
  store i32 0, i32* %3, align 4
  br label %189

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @skb_copy_bits(%struct.sk_buff* %48, i32 %49, i32* %11, i32 4)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (...) @BUG()
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ntohl(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %58 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %139, %54
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %142

64:                                               ; preds = %60
  %65 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %66 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %73 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %74 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %138 [
    i32 131, label %81
    i32 129, label %85
    i32 128, label %89
    i32 130, label %93
  ]

81:                                               ; preds = %64
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %138

85:                                               ; preds = %64
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %13, align 4
  %88 = shl i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %138

89:                                               ; preds = %64
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %13, align 4
  %92 = ashr i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %138

93:                                               ; preds = %64
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %189

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %100
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 4
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %125, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = sub nsw i32 %120, %121
  %123 = sub nsw i32 %122, 4
  %124 = icmp sgt i32 %117, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %116, %109, %100
  store i32 0, i32* %3, align 4
  br label %189

126:                                              ; preds = %116
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i64 @skb_copy_bits(%struct.sk_buff* %127, i32 %130, i32* %11, i32 4)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 (...) @BUG()
  br label %135

135:                                              ; preds = %133, %126
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @ntohl(i32 %136)
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %64, %135, %89, %85, %81
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %60

142:                                              ; preds = %60
  %143 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %144 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %174, %142
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %177

150:                                              ; preds = %146
  %151 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %152 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %151, i32 0, i32 2
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %150
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %164 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp sle i32 %162, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %177

173:                                              ; preds = %161, %150
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %146

177:                                              ; preds = %172, %146
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.xt_u32_test*, %struct.xt_u32_test** %6, align 8
  %180 = getelementptr inbounds %struct.xt_u32_test, %struct.xt_u32_test* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp uge i32 %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %189

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %7, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %16

188:                                              ; preds = %16
  store i32 1, i32* %3, align 4
  br label %189

189:                                              ; preds = %188, %183, %125, %99, %46
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
