; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_stty.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_stty.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32, i32, i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@opterr = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"-aefg\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"aef:g\00", align 1
@optarg = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s isn't a terminal\00", align 1
@TIOCGETD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"TIOCGETD\00", align 1
@TIOCGWINSZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"TIOCGWINSZ\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"gfmt1\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"illegal option -- %s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"tcsetattr\00", align 1
@TIOCSWINSZ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"TIOCSWINSZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  store i32 129, i32* %7, align 4
  %12 = load i32, i32* @STDIN_FILENO, align 4
  %13 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i64 0, i64* @opterr, align 8
  br label %14

14:                                               ; preds = %59, %2
  %15 = load i32, i32* @optind, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* @optind, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strspn(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @optind, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @getopt(i32 %33, i8** %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, -1
  br label %37

37:                                               ; preds = %32, %18, %14
  %38 = phi i1 [ false, %18 ], [ false, %14 ], [ %36, %32 ]
  br i1 %38, label %39, label %60

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %58 [
    i32 97, label %41
    i32 101, label %42
    i32 102, label %43
    i32 103, label %56
    i32 63, label %57
  ]

41:                                               ; preds = %39
  store i32 128, i32* %7, align 4
  br label %59

42:                                               ; preds = %39
  store i32 131, i32* %7, align 4
  br label %59

43:                                               ; preds = %39
  %44 = load i8*, i8** @optarg, align 8
  %45 = load i32, i32* @O_RDONLY, align 4
  %46 = load i32, i32* @O_NONBLOCK, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @open(i8* %44, i32 %47)
  %49 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = icmp slt i32 %48, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i8*, i8** @optarg, align 8
  store i8* %55, i8** %9, align 8
  br label %59

56:                                               ; preds = %39
  store i32 130, i32* %7, align 4
  br label %59

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %39, %57
  br label %61

59:                                               ; preds = %56, %54, %42, %41
  br label %14

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i32, i32* @optind, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @optind, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8** %68, i8*** %5, align 8
  %69 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 4
  %72 = call i64 @tcgetattr(i32 %70, i32* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %61
  %78 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TIOCGETD, align 4
  %81 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 5
  %82 = call i64 @ioctl(i32 %79, i32 %80, i32* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TIOCGWINSZ, align 4
  %90 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 2
  %91 = call i64 @ioctl(i32 %88, i32 %89, i32* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = call i32 (...) @checkredirect()
  %97 = load i32, i32* %7, align 4
  switch i32 %97, label %117 [
    i32 129, label %98
    i32 131, label %104
    i32 128, label %104
    i32 130, label %111
  ]

98:                                               ; preds = %95
  %99 = load i8**, i8*** %5, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %117

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %95, %95, %103
  %105 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 4
  %106 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 2
  %107 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @print(i32* %105, i32* %106, i32 %108, i32 %109)
  br label %117

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 4
  %113 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 2
  %114 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @gprint(i32* %112, i32* %113, i32 %115)
  br label %117

117:                                              ; preds = %95, %111, %104, %102
  %118 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 0
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %177, %117
  %121 = load i8**, i8*** %5, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %180

124:                                              ; preds = %120
  %125 = call i64 @ksearch(i8*** %5, %struct.info* %6)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %177

128:                                              ; preds = %124
  %129 = call i64 @csearch(i8*** %5, %struct.info* %6)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %177

132:                                              ; preds = %128
  %133 = call i64 @msearch(i8*** %5, %struct.info* %6)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %177

136:                                              ; preds = %132
  %137 = load i8**, i8*** %5, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @isdigit(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load i8**, i8*** %5, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* @UINT_MAX, align 4
  %146 = call i32 @strtonum(i8* %144, i32 0, i32 %145, i8** %10)
  store i32 %146, i32* %11, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %142
  %152 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @cfsetospeed(i32* %152, i32 %153)
  %155 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @cfsetispeed(i32* %155, i32 %156)
  %158 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 0
  store i32 1, i32* %158, align 4
  br label %177

159:                                              ; preds = %136
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strncmp(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 4
  %166 = load i8**, i8*** %5, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 6
  %169 = getelementptr inbounds i8, i8* %168, i64 -1
  %170 = call i32 @gread(i32* %165, i8* %169)
  %171 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 0
  store i32 1, i32* %171, align 4
  br label %177

172:                                              ; preds = %159
  %173 = load i8**, i8*** %5, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %174)
  %176 = call i32 (...) @usage()
  br label %177

177:                                              ; preds = %172, %164, %151, %135, %131, %127
  %178 = load i8**, i8*** %5, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i32 1
  store i8** %179, i8*** %5, align 8
  br label %120

180:                                              ; preds = %120
  %181 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 4
  %188 = call i64 @tcsetattr(i32 %186, i32 0, i32* %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %184, %180
  %193 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @TIOCSWINSZ, align 4
  %200 = getelementptr inbounds %struct.info, %struct.info* %6, i32 0, i32 2
  %201 = call i64 @ioctl(i32 %198, i32 %199, i32* %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %196, %192
  %206 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @tcgetattr(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @checkredirect(...) #1

declare dso_local i32 @print(i32*, i32*, i32, i32) #1

declare dso_local i32 @gprint(i32*, i32*, i32) #1

declare dso_local i64 @ksearch(i8***, %struct.info*) #1

declare dso_local i64 @csearch(i8***, %struct.info*) #1

declare dso_local i64 @msearch(i8***, %struct.info*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @cfsetospeed(i32*, i32) #1

declare dso_local i32 @cfsetispeed(i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @gread(i32*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @tcsetattr(i32, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
