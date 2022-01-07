; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_ls_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_gen_subs.c_ls_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8*, %struct.stat }
%struct.stat = type { i64, i8*, i32, i32, i64, i32, i32 }

@MODELEN = common dso_local global i32 0, align 4
@DATELEN = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@d_first = common dso_local global i32 0, align 4
@D_MD_ORDER = common dso_local global i32 0, align 4
@SIXMONTHS = common dso_local global i64 0, align 8
@OLDFRMTD = common dso_local global i8* null, align 8
@OLDFRMTM = common dso_local global i8* null, align 8
@CURFRMTD = common dso_local global i8* null, align 8
@CURFRMTM = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s%2ju %-12s %-12s \00", align 1
@PAX_CHR = common dso_local global i64 0, align 8
@PAX_BLK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%4lu,%4lu \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%9ju \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@PAX_HLK = common dso_local global i64 0, align 8
@PAX_HRG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c" == %s\0A\00", align 1
@PAX_SLK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c" => %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ls_list(%struct.TYPE_3__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @MODELEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @DATELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load i32, i32* @vflag, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @fflush(i32* %28)
  store i32 1, i32* %12, align 4
  br label %169

30:                                               ; preds = %3
  %31 = load i32, i32* @d_first, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* @D_MD_ORDER, align 4
  %35 = call i8* @nl_langinfo(i32 %34)
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 100
  %39 = zext i1 %38 to i32
  store i32 %39, i32* @d_first, align 4
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store %struct.stat* %42, %struct.stat** %7, align 8
  %43 = load %struct.stat*, %struct.stat** %7, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strmode(i32 %45, i8* %16)
  %47 = load %struct.stat*, %struct.stat** %7, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SIXMONTHS, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* %5, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load i32, i32* @d_first, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i8*, i8** @OLDFRMTD, align 8
  br label %61

59:                                               ; preds = %54
  %60 = load i8*, i8** @OLDFRMTM, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i8* [ %58, %57 ], [ %60, %59 ]
  store i8* %62, i8** %11, align 8
  br label %72

63:                                               ; preds = %40
  %64 = load i32, i32* @d_first, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** @CURFRMTD, align 8
  br label %70

68:                                               ; preds = %63
  %69 = load i8*, i8** @CURFRMTM, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i8* [ %67, %66 ], [ %69, %68 ]
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i32, i32* @DATELEN, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.stat*, %struct.stat** %7, align 8
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %75, i32 0, i32 0
  %77 = call i32 @localtime(i64* %76)
  %78 = call i64 @strftime(i8* %19, i32 %73, i8* %74, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %81, align 16
  br label %82

82:                                               ; preds = %80, %72
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.stat*, %struct.stat** %7, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.stat*, %struct.stat** %7, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @name_uid(i32 %90, i32 1)
  %92 = load %struct.stat*, %struct.stat** %7, align 8
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @name_gid(i32 %94, i32 1)
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %87, i8* %91, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PAX_CHR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %82
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PAX_BLK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102, %82
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.stat*, %struct.stat** %7, align 8
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @MAJOR(i32 %112)
  %114 = sext i32 %113 to i64
  %115 = load %struct.stat*, %struct.stat** %7, align 8
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @MINOR(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %114, i64 %119)
  br label %127

121:                                              ; preds = %102
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.stat*, %struct.stat** %7, align 8
  %124 = getelementptr inbounds %struct.stat, %struct.stat* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %121, %108
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %19, i8* %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PAX_HLK, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %127
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PAX_HRG, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138, %127
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %148)
  br label %166

150:                                              ; preds = %138
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PAX_SLK, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32*, i32** %6, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 (i32*, i8*, ...) @fprintf(i32* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %160)
  br label %165

162:                                              ; preds = %150
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @putc(i8 signext 10, i32* %163)
  br label %165

165:                                              ; preds = %162, %156
  br label %166

166:                                              ; preds = %165, %144
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @fflush(i32* %167)
  store i32 1, i32* %12, align 4
  br label %169

169:                                              ; preds = %166, %22
  %170 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %170)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i8* @nl_langinfo(i32) #2

declare dso_local i32 @strmode(i32, i8*) #2

declare dso_local i64 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @localtime(i64*) #2

declare dso_local i8* @name_uid(i32, i32) #2

declare dso_local i32 @name_gid(i32, i32) #2

declare dso_local i32 @MAJOR(i32) #2

declare dso_local i32 @MINOR(i32) #2

declare dso_local i32 @putc(i8 signext, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
