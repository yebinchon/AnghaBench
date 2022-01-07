; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_mod_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_mod_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32, i32 }

@rmleadslash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Removing leading / from absolute path names in the archive\00", align 1
@PAX_HLK = common dso_local global i64 0, align 8
@PAX_HRG = common dso_local global i64 0, align 8
@rephead = common dso_local global i32* null, align 8
@PAX_SLK = common dso_local global i64 0, align 8
@iflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_name(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @rmleadslash, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %51

15:                                               ; preds = %7
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 46, i8* %27, align 1
  br label %45

28:                                               ; preds = %15
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call i32 @memmove(i8* %31, i8* %35, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %28, %23
  %46 = load i32, i32* @rmleadslash, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  store i32 2, i32* @rmleadslash, align 4
  %49 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %50, %7, %1
  %52 = load i32, i32* @rmleadslash, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %110

62:                                               ; preds = %54
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PAX_HLK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PAX_HRG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %68, %62
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 46, i8* %86, align 1
  br label %104

87:                                               ; preds = %74
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = call i32 @memmove(i8* %90, i8* %94, i32 %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %87, %82
  %105 = load i32, i32* @rmleadslash, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  store i32 2, i32* @rmleadslash, align 4
  %108 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104
  br label %110

110:                                              ; preds = %109, %68, %54, %51
  %111 = load i32*, i32** @rephead, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %152

113:                                              ; preds = %110
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = call i32 @rep_name(i8* %116, i32* %118, i32 1)
  store i32 %119, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %189

123:                                              ; preds = %113
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PAX_SLK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PAX_HLK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PAX_HRG, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %135, %129, %123
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = call i32 @rep_name(i8* %144, i32* %146, i32 0)
  store i32 %147, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %2, align 4
  br label %189

151:                                              ; preds = %141, %135
  br label %152

152:                                              ; preds = %151, %110
  %153 = load i64, i64* @iflag, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %187

155:                                              ; preds = %152
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = call i32 @tty_rename(%struct.TYPE_4__* %156)
  store i32 %157, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %189

161:                                              ; preds = %155
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PAX_SLK, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %179, label %167

167:                                              ; preds = %161
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PAX_HLK, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @PAX_HRG, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %173, %167, %161
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = call i32 @sub_name(i8* %182, i32* %184, i32 8)
  br label %186

186:                                              ; preds = %179, %173
  br label %187

187:                                              ; preds = %186, %152
  %188 = load i32, i32* %4, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %159, %149, %121
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @rep_name(i8*, i32*, i32) #1

declare dso_local i32 @tty_rename(%struct.TYPE_4__*) #1

declare dso_local i32 @sub_name(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
