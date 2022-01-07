; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_add_gnu_debuglink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_add_gnu_debuglink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64, i32, i32, i32* }
%struct.sec_add = type { i32, i32*, i32* }
%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c".gnu_debuglink\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"stat failed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"empty debug link target %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"can not open %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"fread failed\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"basename failed\00", align 1
@ELFDATA2LSB = common dso_local global i64 0, align 8
@sadd_list = common dso_local global i32 0, align 4
@SEC_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*)* @add_gnu_debuglink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_gnu_debuglink(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca %struct.sec_add*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %10 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %11 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %219

15:                                               ; preds = %1
  %16 = call i8* @malloc(i32 24)
  %17 = bitcast i8* %16 to %struct.sec_add*
  store %struct.sec_add* %17, %struct.sec_add** %3, align 8
  %18 = icmp eq %struct.sec_add* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 (i32, i8*, ...) @err(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15
  %23 = call i32* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %25 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = icmp eq i32* %23, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 (i32, i8*, ...) @err(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %32 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @stat(i32* %33, %struct.stat* %4)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 (i32, i8*, ...) @err(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %46 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @errx(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32* %47)
  br label %49

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @malloc(i32 %51)
  store i8* %52, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 (i32, i8*, ...) @err(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %59 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* @fopen(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %61, i32** %5, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %66 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 (i32, i8*, ...) @err(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @fread(i8* %70, i32 1, i32 %72, i32* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @ferror(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76, %69
  %81 = load i32, i32* @EXIT_FAILURE, align 4
  %82 = call i32 (i32, i8*, ...) @err(i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @fclose(i32* %84)
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @calc_crc32(i8* %86, i32 %88, i32 -1)
  store i32 %89, i32* %9, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %93 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i8* @basename(i32* %94)
  store i8* %95, i8** %6, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i32, i32* @EXIT_FAILURE, align 4
  %99 = call i32 (i32, i8*, ...) @err(i32 %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %83
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strlen(i8* %101)
  %103 = add nsw i64 %102, 1
  %104 = call i32 @roundup(i64 %103, i32 4)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 4
  %107 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %108 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %110 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32* @calloc(i32 1, i32 %111)
  %113 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %114 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = icmp eq i32* %112, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %100
  %117 = load i32, i32* @EXIT_FAILURE, align 4
  %118 = call i32 (i32, i8*, ...) @err(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %100
  %120 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %121 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i64 @strlen(i8* %124)
  %126 = call i32 @strncpy(i32* %122, i8* %123, i64 %125)
  %127 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %128 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ELFDATA2LSB, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %119
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 255
  %135 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %136 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* %9, align 4
  %142 = ashr i32 %141, 8
  %143 = and i32 %142, 255
  %144 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %145 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %143, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  %152 = ashr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %155 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %153, i32* %160, align 4
  %161 = load i32, i32* %9, align 4
  %162 = ashr i32 %161, 24
  %163 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %164 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %162, i32* %169, align 4
  br label %208

170:                                              ; preds = %119
  %171 = load i32, i32* %9, align 4
  %172 = ashr i32 %171, 24
  %173 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %174 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load i32, i32* %9, align 4
  %180 = ashr i32 %179, 16
  %181 = and i32 %180, 255
  %182 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %183 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %181, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = ashr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %193 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 %191, i32* %198, align 4
  %199 = load i32, i32* %9, align 4
  %200 = and i32 %199, 255
  %201 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %202 = getelementptr inbounds %struct.sec_add, %struct.sec_add* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32 %200, i32* %207, align 4
  br label %208

208:                                              ; preds = %170, %132
  %209 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %210 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %209, i32 0, i32 2
  %211 = load %struct.sec_add*, %struct.sec_add** %3, align 8
  %212 = load i32, i32* @sadd_list, align 4
  %213 = call i32 @STAILQ_INSERT_TAIL(i32* %210, %struct.sec_add* %211, i32 %212)
  %214 = load i32, i32* @SEC_ADD, align 4
  %215 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %216 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %208, %14
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @errx(i32, i8*, i32*) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @calc_crc32(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @basename(i32*) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i64) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.sec_add*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
