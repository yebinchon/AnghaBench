; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_ranges_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_ranges_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dwarf_attrlist failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"dwarf_whatattr failed: %s\00", align 1
@DW_AT_ranges = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"dwarf_formudata failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"    %08jx \00", align 1
@DW_RANGES_END = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"<End of list>\00", align 1
@DW_RANGES_ADDRESS_SELECTION = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"%08jx %08jx\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%016jx %016jx\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"dwarf_child: %s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"dwarf_siblingof: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32, i64)* @dump_dwarf_ranges_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_ranges_foreach(%struct.readelf* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dwarf_attrlist(i32 %20, i32** %7, i32* %13, i32* %10)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @DW_DLV_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load i32, i32* %19, align 4
  %26 = load i32, i32* @DW_DLV_ERROR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @dwarf_errmsg(i32 %29)
  %31 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %177

33:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  br label %34

34:                                               ; preds = %173, %33
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %176

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dwarf_whatattr(i32 %43, i64* %12, i32* %10)
  %45 = load i32, i32* @DW_DLV_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dwarf_errmsg(i32 %48)
  %50 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %173

51:                                               ; preds = %38
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @DW_AT_ranges, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %173

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dwarf_formudata(i32 %61, i64* %15, i32* %10)
  %63 = load i32, i32* @DW_DLV_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dwarf_errmsg(i32 %66)
  %68 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %173

69:                                               ; preds = %56
  %70 = load %struct.readelf*, %struct.readelf** %4, align 8
  %71 = getelementptr inbounds %struct.readelf, %struct.readelf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @dwarf_get_ranges(i32 %72, i32 %74, %struct.TYPE_3__** %8, i32* %14, i64* %16, i32* %10)
  %76 = load i32, i32* @DW_DLV_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %173

79:                                               ; preds = %69
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* %11, align 8
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %169, %79
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %172

85:                                               ; preds = %81
  %86 = load i64, i64* %15, align 8
  %87 = trunc i64 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DW_RANGES_END, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %169

101:                                              ; preds = %85
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DW_RANGES_ADDRESS_SELECTION, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %11, align 8
  br label %169

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.readelf*, %struct.readelf** %4, align 8
  %120 = getelementptr inbounds %struct.readelf, %struct.readelf* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ELFCLASS32, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %118
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = add nsw i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = add nsw i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %135, i32 %144)
  br label %168

146:                                              ; preds = %118
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = add nsw i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = add nsw i64 %163, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %157, i32 %166)
  br label %168

168:                                              ; preds = %146, %124
  br label %169

169:                                              ; preds = %168, %110, %99
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %81

172:                                              ; preds = %81
  br label %173

173:                                              ; preds = %172, %78, %65, %55, %47
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %34

176:                                              ; preds = %34
  br label %177

177:                                              ; preds = %176, %32
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @dwarf_child(i32 %178, i32* %9, i32* %10)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* @DW_DLV_ERROR, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @dwarf_errmsg(i32 %184)
  %186 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %185)
  br label %196

187:                                              ; preds = %177
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* @DW_DLV_OK, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load %struct.readelf*, %struct.readelf** %4, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i64, i64* %6, align 8
  call void @dump_dwarf_ranges_foreach(%struct.readelf* %192, i32 %193, i64 %194)
  br label %195

195:                                              ; preds = %191, %187
  br label %196

196:                                              ; preds = %195, %183
  %197 = load %struct.readelf*, %struct.readelf** %4, align 8
  %198 = getelementptr inbounds %struct.readelf, %struct.readelf* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @dwarf_siblingof(i32 %199, i32 %200, i32* %9, i32* %10)
  store i32 %201, i32* %19, align 4
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* @DW_DLV_ERROR, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @dwarf_errmsg(i32 %206)
  %208 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %207)
  br label %218

209:                                              ; preds = %196
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @DW_DLV_OK, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load %struct.readelf*, %struct.readelf** %4, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i64, i64* %6, align 8
  call void @dump_dwarf_ranges_foreach(%struct.readelf* %214, i32 %215, i64 %216)
  br label %217

217:                                              ; preds = %213, %209
  br label %218

218:                                              ; preds = %217, %205
  ret void
}

declare dso_local i32 @dwarf_attrlist(i32, i32**, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_whatattr(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_formudata(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_get_ranges(i32, i32, %struct.TYPE_3__**, i32*, i64*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @dwarf_child(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_siblingof(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
