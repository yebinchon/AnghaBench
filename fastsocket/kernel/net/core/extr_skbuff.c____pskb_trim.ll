; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c____pskb_trim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c____pskb_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, %struct.sk_buff*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @___pskb_trim(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_headlen(%struct.sk_buff* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @skb_cloned(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @pskb_expand_head(%struct.sk_buff* %25, i32 0, i32 0, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %209

32:                                               ; preds = %24, %2
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %72

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %103, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %43, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %8, align 4
  br label %103

59:                                               ; preds = %42
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub i32 %60, %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %62, i32* %71, align 4
  br label %72

72:                                               ; preds = %59, %36
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %92, %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @put_page(i32 %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %77

95:                                               ; preds = %77
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i64 @skb_has_frag_list(%struct.sk_buff* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @skb_drop_fraglist(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %95
  br label %181

103:                                              ; preds = %57
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %38

106:                                              ; preds = %38
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store %struct.sk_buff** %109, %struct.sk_buff*** %6, align 8
  br label %110

110:                                              ; preds = %177, %106
  %111 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %111, align 8
  store %struct.sk_buff* %112, %struct.sk_buff** %7, align 8
  %113 = icmp ne %struct.sk_buff* %112, null
  br i1 %113, label %114, label %180

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  store i32 %119, i32* %13, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = call i64 @skb_shared(%struct.sk_buff* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %114
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = load i32, i32* @GFP_ATOMIC, align 4
  %126 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %124, i32 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %14, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %209

136:                                              ; preds = %123
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 2
  %139 = load %struct.sk_buff*, %struct.sk_buff** %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 2
  store %struct.sk_buff* %139, %struct.sk_buff** %141, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = call i32 @kfree_skb(%struct.sk_buff* %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %144, %struct.sk_buff** %7, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %145, %struct.sk_buff** %146, align 8
  br label %147

147:                                              ; preds = %136, %114
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %8, align 4
  br label %177

153:                                              ; preds = %147
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ugt i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sub i32 %159, %160
  %162 = call i32 @pskb_trim(%struct.sk_buff* %158, i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %209

167:                                              ; preds = %157, %153
  %168 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 2
  %170 = load %struct.sk_buff*, %struct.sk_buff** %169, align 8
  %171 = icmp ne %struct.sk_buff* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 2
  %175 = call i32 @skb_drop_list(%struct.sk_buff** %174)
  br label %176

176:                                              ; preds = %172, %167
  br label %180

177:                                              ; preds = %151
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 2
  store %struct.sk_buff** %179, %struct.sk_buff*** %6, align 8
  br label %110

180:                                              ; preds = %176, %110
  br label %181

181:                                              ; preds = %180, %102
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %184 = call i32 @skb_headlen(%struct.sk_buff* %183)
  %185 = icmp ugt i32 %182, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sub i32 %189, %190
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sub i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  br label %208

199:                                              ; preds = %181
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 1
  store i32 0, i32* %204, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %205, i32 %206)
  br label %208

208:                                              ; preds = %199, %186
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %165, %133, %30
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @skb_drop_fraglist(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_drop_list(%struct.sk_buff**) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
