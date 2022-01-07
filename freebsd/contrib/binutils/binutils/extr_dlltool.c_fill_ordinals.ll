; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_fill_ordinals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_fill_ordinals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@d_nfuncs = common dso_local global i32 0, align 4
@pfunc = common dso_local global i32 0, align 4
@d_low_ord = common dso_local global i32 0, align 4
@d_high_ord = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**)* @fill_ordinals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_ordinals(%struct.TYPE_4__** %0) #0 {
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 65536, i32* %6, align 4
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %9 = load i32, i32* @d_nfuncs, align 4
  %10 = load i32, i32* @pfunc, align 4
  %11 = call i32 @qsort(%struct.TYPE_4__** %8, i32 %9, i32 8, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @xmalloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %64, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @d_nfuncs, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %63

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %32, i64 %40
  store i8 1, i8* %41, align 1
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %54, label %44

44:                                               ; preds = %31
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %44, %31
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %44
  br label %63

63:                                               ; preds = %62, %22
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %18

67:                                               ; preds = %18
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %147, %71
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @d_nfuncs, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %150

76:                                               ; preds = %72
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %146

85:                                               ; preds = %76
  %86 = load i32, i32* %3, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %112, %85
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %91
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 1, i8* %103, align 1
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %104, i32* %110, align 4
  br label %145

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %87

115:                                              ; preds = %87
  %116 = load i32, i32* %3, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %141, %115
  %118 = load i32, i32* %7, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %117
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 1, i8* %132, align 1
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %134, i64 %136
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %133, i32* %139, align 4
  br label %145

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %7, align 4
  br label %117

144:                                              ; preds = %117
  br label %145

145:                                              ; preds = %144, %128, %99
  br label %146

146:                                              ; preds = %145, %76
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %72

150:                                              ; preds = %72
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %154 = load i32, i32* @d_nfuncs, align 4
  %155 = load i32, i32* @pfunc, align 4
  %156 = call i32 @qsort(%struct.TYPE_4__** %153, i32 %154, i32 8, i32 %155)
  %157 = load i32, i32* @d_nfuncs, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %188

159:                                              ; preds = %150
  %160 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %160, i64 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = icmp ne %struct.TYPE_4__* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %165, i64 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* @d_low_ord, align 4
  br label %170

170:                                              ; preds = %164, %159
  %171 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %172 = load i32, i32* @d_nfuncs, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %171, i64 %174
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = icmp ne %struct.TYPE_4__* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %170
  %179 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %180 = load i32, i32* @d_nfuncs, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %179, i64 %182
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* @d_high_ord, align 4
  br label %187

187:                                              ; preds = %178, %170
  br label %188

188:                                              ; preds = %187, %150
  ret void
}

declare dso_local i32 @qsort(%struct.TYPE_4__**, i32, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
