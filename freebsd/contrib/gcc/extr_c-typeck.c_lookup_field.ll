; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_lookup_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_lookup_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64*, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @lookup_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_field(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.TYPE_4__* @TYPE_LANG_SPECIFIC(i64 %16)
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %155

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.TYPE_4__* @TYPE_LANG_SPECIFIC(i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %155

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.TYPE_4__* @TYPE_LANG_SPECIFIC(i64 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64* %32, i64** %11, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TYPE_FIELDS(i64 %33)
  store i64 %34, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.TYPE_4__* @TYPE_LANG_SPECIFIC(i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %130, %110, %25
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %131

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i64*, i64** %11, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %52, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @DECL_NAME(i64 %59)
  %61 = load i64, i64* @NULL_TREE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %111

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %103, %63
  %65 = load i64*, i64** %11, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @DECL_NAME(i64 %69)
  %71 = load i64, i64* @NULL_TREE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %64
  %74 = load i64*, i64** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @TREE_TYPE(i64 %80)
  %82 = call i64 @TREE_CODE(i64 %81)
  %83 = load i64, i64* @RECORD_TYPE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %73
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @TREE_TYPE(i64 %86)
  %88 = call i64 @TREE_CODE(i64 %87)
  %89 = load i64, i64* @UNION_TYPE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85, %73
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @lookup_field(i64 %92, i64 %93)
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i64, i64* @NULL_TREE, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @tree_cons(i64 %98, i64 %99, i64 %100)
  store i64 %101, i64* %3, align 8
  br label %212

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %85
  br label %64

104:                                              ; preds = %64
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* @NULL_TREE, align 8
  store i64 %109, i64* %3, align 8
  br label %212

110:                                              ; preds = %104
  br label %41

111:                                              ; preds = %46
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @DECL_NAME(i64 %112)
  %114 = load i64, i64* %5, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %131

117:                                              ; preds = %111
  %118 = load i64, i64* %7, align 8
  %119 = call i64 @DECL_NAME(i64 %118)
  %120 = load i64, i64* %5, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %130

126:                                              ; preds = %117
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %41

131:                                              ; preds = %116, %41
  %132 = load i64*, i64** %11, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @DECL_NAME(i64 %136)
  %138 = load i64, i64* %5, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load i64*, i64** %11, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %7, align 8
  br label %154

146:                                              ; preds = %131
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @DECL_NAME(i64 %147)
  %149 = load i64, i64* %5, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i64, i64* @NULL_TREE, align 8
  store i64 %152, i64* %3, align 8
  br label %212

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %140
  br label %207

155:                                              ; preds = %19, %2
  %156 = load i64, i64* %6, align 8
  %157 = call i64 @TYPE_FIELDS(i64 %156)
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %197, %155
  %159 = load i64, i64* %7, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %200

161:                                              ; preds = %158
  %162 = load i64, i64* %7, align 8
  %163 = call i64 @DECL_NAME(i64 %162)
  %164 = load i64, i64* @NULL_TREE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %161
  %167 = load i64, i64* %7, align 8
  %168 = call i64 @TREE_TYPE(i64 %167)
  %169 = call i64 @TREE_CODE(i64 %168)
  %170 = load i64, i64* @RECORD_TYPE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load i64, i64* %7, align 8
  %174 = call i64 @TREE_TYPE(i64 %173)
  %175 = call i64 @TREE_CODE(i64 %174)
  %176 = load i64, i64* @UNION_TYPE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %172, %166
  %179 = load i64, i64* %7, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @lookup_field(i64 %179, i64 %180)
  store i64 %181, i64* %13, align 8
  %182 = load i64, i64* %13, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i64, i64* @NULL_TREE, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i64 @tree_cons(i64 %185, i64 %186, i64 %187)
  store i64 %188, i64* %3, align 8
  br label %212

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %172, %161
  %191 = load i64, i64* %7, align 8
  %192 = call i64 @DECL_NAME(i64 %191)
  %193 = load i64, i64* %5, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %200

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %7, align 8
  %199 = call i64 @TREE_CHAIN(i64 %198)
  store i64 %199, i64* %7, align 8
  br label %158

200:                                              ; preds = %195, %158
  %201 = load i64, i64* %7, align 8
  %202 = load i64, i64* @NULL_TREE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i64, i64* @NULL_TREE, align 8
  store i64 %205, i64* %3, align 8
  br label %212

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %154
  %208 = load i64, i64* @NULL_TREE, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* @NULL_TREE, align 8
  %211 = call i64 @tree_cons(i64 %208, i64 %209, i64 %210)
  store i64 %211, i64* %3, align 8
  br label %212

212:                                              ; preds = %207, %204, %184, %151, %108, %97
  %213 = load i64, i64* %3, align 8
  ret i64 %213
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local %struct.TYPE_4__* @TYPE_LANG_SPECIFIC(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
