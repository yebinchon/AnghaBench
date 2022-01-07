; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_subr.c_ax25_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_subr.c_ax25_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i8* }

@AX25_ILLEGAL = common dso_local global i32 0, align 4
@AX25_MODULUS = common dso_local global i64 0, align 8
@AX25_S = common dso_local global i8 0, align 1
@AX25_I = common dso_local global i32 0, align 4
@AX25_PF = common dso_local global i8 0, align 1
@AX25_U = common dso_local global i8 0, align 1
@AX25_EPF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_decode(%struct.TYPE_3__* %0, %struct.sk_buff* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* @AX25_ILLEGAL, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AX25_MODULUS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %119

25:                                               ; preds = %5
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @AX25_S, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %25
  %35 = load i32, i32* @AX25_I, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 1
  %41 = and i32 %40, 7
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = ashr i32 %46, 5
  %48 = and i32 %47, 7
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @AX25_PF, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %116

58:                                               ; preds = %25
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @AX25_U, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %88

67:                                               ; preds = %58
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 15
  store i32 %72, i32* %12, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = ashr i32 %76, 5
  %78 = and i32 %77, 7
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* @AX25_PF, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %83, %85
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %115

88:                                               ; preds = %58
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @AX25_U, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %114

97:                                               ; preds = %88
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @AX25_PF, align 1
  %103 = zext i8 %102 to i32
  %104 = xor i32 %103, -1
  %105 = and i32 %101, %104
  store i32 %105, i32* %12, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @AX25_PF, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %109, %111
  %113 = load i32*, i32** %10, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %97, %88
  br label %115

115:                                              ; preds = %114, %67
  br label %116

116:                                              ; preds = %115, %34
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = call i32 @skb_pull(%struct.sk_buff* %117, i32 1)
  br label %217

119:                                              ; preds = %5
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @AX25_S, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %123, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %119
  %129 = load i32, i32* @AX25_I, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = ashr i32 %133, 1
  %135 = and i32 %134, 127
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = ashr i32 %140, 1
  %142 = and i32 %141, 127
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* @AX25_EPF, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %147, %149
  %151 = load i32*, i32** %10, align 8
  store i32 %150, i32* %151, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = call i32 @skb_pull(%struct.sk_buff* %152, i32 2)
  br label %216

154:                                              ; preds = %119
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* @AX25_U, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %158, %160
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %186

163:                                              ; preds = %154
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 15
  store i32 %168, i32* %12, align 4
  %169 = load i8*, i8** %11, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = ashr i32 %172, 1
  %174 = and i32 %173, 127
  %175 = load i32*, i32** %9, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i8*, i8** %11, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, i8* @AX25_EPF, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %179, %181
  %183 = load i32*, i32** %10, align 8
  store i32 %182, i32* %183, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %185 = call i32 @skb_pull(%struct.sk_buff* %184, i32 2)
  br label %215

186:                                              ; preds = %154
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load i8, i8* @AX25_U, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 %190, %192
  %194 = icmp eq i32 %193, 3
  br i1 %194, label %195, label %214

195:                                              ; preds = %186
  %196 = load i8*, i8** %11, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8, i8* @AX25_PF, align 1
  %201 = zext i8 %200 to i32
  %202 = xor i32 %201, -1
  %203 = and i32 %199, %202
  store i32 %203, i32* %12, align 4
  %204 = load i8*, i8** %11, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* @AX25_PF, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %207, %209
  %211 = load i32*, i32** %10, align 8
  store i32 %210, i32* %211, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %213 = call i32 @skb_pull(%struct.sk_buff* %212, i32 1)
  br label %214

214:                                              ; preds = %195, %186
  br label %215

215:                                              ; preds = %214, %163
  br label %216

216:                                              ; preds = %215, %128
  br label %217

217:                                              ; preds = %216, %116
  %218 = load i32, i32* %12, align 4
  ret i32 %218
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
