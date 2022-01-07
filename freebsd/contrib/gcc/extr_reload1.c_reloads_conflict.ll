; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reloads_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reloads_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@rld = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @reloads_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reloads_conflict(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %206

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %204 [
    i32 137, label %39
    i32 136, label %66
    i32 138, label %85
    i32 129, label %104
    i32 131, label %123
    i32 133, label %142
    i32 134, label %154
    i32 130, label %163
    i32 135, label %184
    i32 132, label %199
    i32 128, label %203
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 135
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 133
  br i1 %44, label %63, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 134
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 137
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 136
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 138
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %58, %59
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br label %63

63:                                               ; preds = %61, %48, %45, %42, %39
  %64 = phi i1 [ true, %48 ], [ true, %45 ], [ true, %42 ], [ true, %39 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %206

66:                                               ; preds = %37
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 136
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 137
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br label %82

82:                                               ; preds = %80, %69
  %83 = phi i1 [ true, %69 ], [ %81, %80 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %206

85:                                               ; preds = %37
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 138
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 137
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  br label %101

101:                                              ; preds = %99, %88
  %102 = phi i1 [ true, %88 ], [ %100, %99 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %206

104:                                              ; preds = %37
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 129
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %120, label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 130
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp sle i32 %115, %116
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i1 [ false, %111 ], [ %117, %114 ]
  br label %120

120:                                              ; preds = %118, %107
  %121 = phi i1 [ true, %107 ], [ %119, %118 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %3, align 4
  br label %206

123:                                              ; preds = %37
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 131
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %126, %123
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 130
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp sle i32 %134, %135
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i1 [ false, %130 ], [ %136, %133 ]
  br label %139

139:                                              ; preds = %137, %126
  %140 = phi i1 [ true, %126 ], [ %138, %137 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %3, align 4
  br label %206

142:                                              ; preds = %37
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 137
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 135
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 133
  br label %151

151:                                              ; preds = %148, %145, %142
  %152 = phi i1 [ true, %145 ], [ true, %142 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %3, align 4
  br label %206

154:                                              ; preds = %37
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, 137
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = icmp eq i32 %158, 134
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi i1 [ true, %154 ], [ %159, %157 ]
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %3, align 4
  br label %206

163:                                              ; preds = %37
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 135
  br i1 %165, label %181, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 130
  br i1 %168, label %181, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 129
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 131
  br i1 %174, label %175, label %179

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp sge i32 %176, %177
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i1 [ false, %172 ], [ %178, %175 ]
  br label %181

181:                                              ; preds = %179, %166, %163
  %182 = phi i1 [ true, %166 ], [ true, %163 ], [ %180, %179 ]
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %3, align 4
  br label %206

184:                                              ; preds = %37
  %185 = load i32, i32* %7, align 4
  %186 = icmp eq i32 %185, 137
  br i1 %186, label %196, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %7, align 4
  %189 = icmp eq i32 %188, 130
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = icmp eq i32 %191, 135
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = icmp eq i32 %194, 133
  br label %196

196:                                              ; preds = %193, %190, %187, %184
  %197 = phi i1 [ true, %190 ], [ true, %187 ], [ true, %184 ], [ %195, %193 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %3, align 4
  br label %206

199:                                              ; preds = %37
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, 132
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %3, align 4
  br label %206

203:                                              ; preds = %37
  store i32 1, i32* %3, align 4
  br label %206

204:                                              ; preds = %37
  %205 = call i32 (...) @gcc_unreachable()
  br label %206

206:                                              ; preds = %36, %63, %82, %101, %120, %139, %151, %160, %181, %196, %199, %203, %204
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
