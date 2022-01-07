; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_seq_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_seq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skb_seq_state = type { i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_seq_read(i32 %0, i32** %1, %struct.skb_seq_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.skb_seq_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store %struct.skb_seq_state* %2, %struct.skb_seq_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %13 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %11, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %18 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %210, %192, %25
  %27 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %28 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %27, i32 0, i32 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @skb_headlen(%struct.TYPE_9__* %29)
  %31 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %32 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %26
  %39 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %40 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %45 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %44, i32 0, i32 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %51 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub i32 %49, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  %56 = load i32**, i32*** %6, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %4, align 4
  br label %222

60:                                               ; preds = %38, %26
  %61 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %62 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %67 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %72 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %71, i32 0, i32 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @skb_headlen(%struct.TYPE_9__* %73)
  %75 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %76 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70, %65, %60
  br label %80

80:                                               ; preds = %154, %79
  %81 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %82 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %85 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %84, i32 0, i32 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call %struct.TYPE_8__* @skb_shinfo(%struct.TYPE_9__* %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %83, %89
  br i1 %90, label %91, label %166

91:                                               ; preds = %80
  %92 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %93 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %92, i32 0, i32 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = call %struct.TYPE_8__* @skb_shinfo(%struct.TYPE_9__* %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %99 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %100
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %10, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %106 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = add i32 %104, %107
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %91
  %113 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %114 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = call i32* @kmap_skb_frag(%struct.TYPE_7__* %118)
  %120 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %121 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %120, i32 0, i32 6
  store i32* %119, i32** %121, align 8
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %124 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %133 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sub i32 %131, %134
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = load i32**, i32*** %6, align 8
  store i32* %137, i32** %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = sub i32 %139, %140
  store i32 %141, i32* %4, align 4
  br label %222

142:                                              ; preds = %91
  %143 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %144 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %149 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @kunmap_skb_frag(i32* %150)
  %152 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %153 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %152, i32 0, i32 6
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %147, %142
  %155 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %156 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %156, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %163 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %80

166:                                              ; preds = %80
  %167 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %168 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %173 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @kunmap_skb_frag(i32* %174)
  %176 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %177 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %176, i32 0, i32 6
  store i32* null, i32** %177, align 8
  br label %178

178:                                              ; preds = %171, %166
  %179 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %180 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %179, i32 0, i32 5
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %183 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %182, i32 0, i32 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = icmp eq %struct.TYPE_9__* %181, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %178
  %187 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %188 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %187, i32 0, i32 5
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = call i64 @skb_has_frag_list(%struct.TYPE_9__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %194 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %193, i32 0, i32 5
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = call %struct.TYPE_8__* @skb_shinfo(%struct.TYPE_9__* %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %200 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %199, i32 0, i32 4
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %200, align 8
  %201 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %202 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %201, i32 0, i32 3
  store i64 0, i64* %202, align 8
  br label %26

203:                                              ; preds = %186, %178
  %204 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %205 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %204, i32 0, i32 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = icmp ne %struct.TYPE_9__* %208, null
  br i1 %209, label %210, label %220

210:                                              ; preds = %203
  %211 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %212 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %211, i32 0, i32 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %217 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %216, i32 0, i32 4
  store %struct.TYPE_9__* %215, %struct.TYPE_9__** %217, align 8
  %218 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %219 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %218, i32 0, i32 3
  store i64 0, i64* %219, align 8
  br label %26

220:                                              ; preds = %203
  br label %221

221:                                              ; preds = %220
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %122, %43, %24
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_headlen(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.TYPE_9__*) #1

declare dso_local i32* @kmap_skb_frag(%struct.TYPE_7__*) #1

declare dso_local i32 @kunmap_skb_frag(i32*) #1

declare dso_local i64 @skb_has_frag_list(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
