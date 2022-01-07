; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_print.c_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_print.c_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cchar = type { i8*, i64, i64 }
%struct.termios = type { i64, i64, i64, i64, i64* }
%struct.winsize = type { i32, i32 }

@TTYDISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"slip disc; \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ppp disc; \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"#%d disc; \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ispeed %d baud; ospeed %d baud;\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"speed %d baud;\00", align 1
@BSD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c" %d rows; %d columns;\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"lflags\00", align 1
@ICANON = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"-icanon\00", align 1
@ISIG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"-isig\00", align 1
@IEXTEN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"-iexten\00", align 1
@ECHO = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"-echo\00", align 1
@ECHOE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"-echoe\00", align 1
@ECHOK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"-echok\00", align 1
@ECHOKE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"-echoke\00", align 1
@ECHONL = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"-echonl\00", align 1
@ECHOCTL = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"-echoctl\00", align 1
@ECHOPRT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"-echoprt\00", align 1
@ALTWERASE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"-altwerase\00", align 1
@NOFLSH = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"-noflsh\00", align 1
@TOSTOP = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"-tostop\00", align 1
@FLUSHO = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"-flusho\00", align 1
@PENDIN = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c"-pendin\00", align 1
@NOKERNINFO = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"-nokerninfo\00", align 1
@EXTPROC = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [9 x i8] c"-extproc\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"iflags\00", align 1
@ISTRIP = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [8 x i8] c"-istrip\00", align 1
@ICRNL = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"-icrnl\00", align 1
@INLCR = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"-inlcr\00", align 1
@IGNCR = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"-igncr\00", align 1
@IXON = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"-ixon\00", align 1
@IXOFF = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"-ixoff\00", align 1
@IXANY = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"-ixany\00", align 1
@IMAXBEL = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"-imaxbel\00", align 1
@IGNBRK = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [8 x i8] c"-ignbrk\00", align 1
@BRKINT = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [8 x i8] c"-brkint\00", align 1
@INPCK = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"-inpck\00", align 1
@IGNPAR = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [8 x i8] c"-ignpar\00", align 1
@PARMRK = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"-parmrk\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"oflags\00", align 1
@OPOST = common dso_local global i64 0, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"-opost\00", align 1
@ONLCR = common dso_local global i64 0, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"-onlcr\00", align 1
@OCRNL = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"-ocrnl\00", align 1
@TABDLY = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"tab0\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"tab3\00", align 1
@ONOCR = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"-onocr\00", align 1
@ONLRET = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c"-onlret\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"cflags\00", align 1
@CREAD = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [7 x i8] c"-cread\00", align 1
@CSIZE = common dso_local global i64 0, align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"cs5\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"cs6\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"cs7\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"cs8\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"-parenb\00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i64 0, align 8
@.str.54 = private unnamed_addr constant [8 x i8] c"-parodd\00", align 1
@HUPCL = common dso_local global i64 0, align 8
@.str.55 = private unnamed_addr constant [7 x i8] c"-hupcl\00", align 1
@CLOCAL = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [8 x i8] c"-clocal\00", align 1
@CSTOPB = common dso_local global i64 0, align 8
@.str.57 = private unnamed_addr constant [8 x i8] c"-cstopb\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"ctsflow\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"rtsflow\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"-crtscts\00", align 1
@CDSR_OFLOW = common dso_local global i64 0, align 8
@.str.61 = private unnamed_addr constant [9 x i8] c"-dsrflow\00", align 1
@CDTR_IFLOW = common dso_local global i64 0, align 8
@.str.62 = private unnamed_addr constant [9 x i8] c"-dtrflow\00", align 1
@MDMBUF = common dso_local global i64 0, align 8
@.str.63 = private unnamed_addr constant [8 x i8] c"-mdmbuf\00", align 1
@CNO_RTSDTR = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [8 x i8] c"-rtsdtr\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"rtsdtr\00", align 1
@POSIX = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [7 x i8] c"cchars\00", align 1
@cchars1 = common dso_local global %struct.cchar* null, align 8
@.str.67 = private unnamed_addr constant [9 x i8] c"%s = %s;\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@LINELENGTH = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@WD = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(%struct.termios* %0, %struct.winsize* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.winsize*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cchar*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [100 x i8], align 16
  %16 = alloca [100 x i8], align 16
  store %struct.termios* %0, %struct.termios** %5, align 8
  store %struct.winsize* %1, %struct.winsize** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @TTYDISC, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 131, label %28
  ]

22:                                               ; preds = %20
  %23 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %12, align 4
  br label %41

28:                                               ; preds = %20
  %29 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  br label %41

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %34, %28, %22
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.termios*, %struct.termios** %5, align 8
  %44 = call i32 @cfgetispeed(%struct.termios* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.termios*, %struct.termios** %5, align 8
  %46 = call i32 @cfgetospeed(%struct.termios* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  br label %65

58:                                               ; preds = %42
  %59 = load i32, i32* %13, align 4
  %60 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %58, %50
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @BSD, align 4
  %68 = icmp uge i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.winsize*, %struct.winsize** %6, align 8
  %71 = getelementptr inbounds %struct.winsize, %struct.winsize* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.winsize*, %struct.winsize** %6, align 8
  %74 = getelementptr inbounds %struct.winsize, %struct.winsize* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %69, %65
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load %struct.termios*, %struct.termios** %5, align 8
  %88 = getelementptr inbounds %struct.termios, %struct.termios* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  %90 = call i32 @binit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @BSD, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @ICANON, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %94, %86
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @ICANON, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %107
  %109 = call i32 @bput(i8* %108)
  br label %110

110:                                              ; preds = %101, %94
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @BSD, align 4
  %113 = icmp uge i32 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @ISIG, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %130

121:                                              ; preds = %114, %110
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @ISIG, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %127
  %129 = call i32 @bput(i8* %128)
  br label %130

130:                                              ; preds = %121, %114
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @BSD, align 4
  %133 = icmp uge i32 %131, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* @IEXTEN, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %150

141:                                              ; preds = %134, %130
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @IEXTEN, align 8
  %144 = and i64 %142, %143
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 %147
  %149 = call i32 @bput(i8* %148)
  br label %150

150:                                              ; preds = %141, %134
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @BSD, align 4
  %153 = icmp uge i32 %151, %152
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* @ECHO, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %170

161:                                              ; preds = %154, %150
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @ECHO, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 %167
  %169 = call i32 @bput(i8* %168)
  br label %170

170:                                              ; preds = %161, %154
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @BSD, align 4
  %173 = icmp uge i32 %171, %172
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @ECHOE, align 8
  %177 = and i64 %175, %176
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %174, %170
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* @ECHOE, align 8
  %184 = and i64 %182, %183
  %185 = icmp ne i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i64 %187
  %189 = call i32 @bput(i8* %188)
  br label %190

190:                                              ; preds = %181, %174
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @BSD, align 4
  %193 = icmp uge i32 %191, %192
  br i1 %193, label %201, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* @ECHOK, align 8
  %197 = and i64 %195, %196
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i32
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %194, %190
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @ECHOK, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %207
  %209 = call i32 @bput(i8* %208)
  br label %210

210:                                              ; preds = %201, %194
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @BSD, align 4
  %213 = icmp uge i32 %211, %212
  br i1 %213, label %221, label %214

214:                                              ; preds = %210
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* @ECHOKE, align 8
  %217 = and i64 %215, %216
  %218 = icmp ne i64 %217, 0
  %219 = zext i1 %218 to i32
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %214, %210
  %222 = load i64, i64* %10, align 8
  %223 = load i64, i64* @ECHOKE, align 8
  %224 = and i64 %222, %223
  %225 = icmp ne i64 %224, 0
  %226 = zext i1 %225 to i32
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i64 %227
  %229 = call i32 @bput(i8* %228)
  br label %230

230:                                              ; preds = %221, %214
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* @BSD, align 4
  %233 = icmp uge i32 %231, %232
  br i1 %233, label %241, label %234

234:                                              ; preds = %230
  %235 = load i64, i64* %10, align 8
  %236 = load i64, i64* @ECHONL, align 8
  %237 = and i64 %235, %236
  %238 = icmp ne i64 %237, 0
  %239 = zext i1 %238 to i32
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %234, %230
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* @ECHONL, align 8
  %244 = and i64 %242, %243
  %245 = icmp ne i64 %244, 0
  %246 = zext i1 %245 to i32
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i64 %247
  %249 = call i32 @bput(i8* %248)
  br label %250

250:                                              ; preds = %241, %234
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @BSD, align 4
  %253 = icmp uge i32 %251, %252
  br i1 %253, label %261, label %254

254:                                              ; preds = %250
  %255 = load i64, i64* %10, align 8
  %256 = load i64, i64* @ECHOCTL, align 8
  %257 = and i64 %255, %256
  %258 = icmp ne i64 %257, 0
  %259 = zext i1 %258 to i32
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %254, %250
  %262 = load i64, i64* %10, align 8
  %263 = load i64, i64* @ECHOCTL, align 8
  %264 = and i64 %262, %263
  %265 = icmp ne i64 %264, 0
  %266 = zext i1 %265 to i32
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i64 %267
  %269 = call i32 @bput(i8* %268)
  br label %270

270:                                              ; preds = %261, %254
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* @BSD, align 4
  %273 = icmp uge i32 %271, %272
  br i1 %273, label %281, label %274

274:                                              ; preds = %270
  %275 = load i64, i64* %10, align 8
  %276 = load i64, i64* @ECHOPRT, align 8
  %277 = and i64 %275, %276
  %278 = icmp ne i64 %277, 0
  %279 = zext i1 %278 to i32
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %274, %270
  %282 = load i64, i64* %10, align 8
  %283 = load i64, i64* @ECHOPRT, align 8
  %284 = and i64 %282, %283
  %285 = icmp ne i64 %284, 0
  %286 = zext i1 %285 to i32
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i64 %287
  %289 = call i32 @bput(i8* %288)
  br label %290

290:                                              ; preds = %281, %274
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @BSD, align 4
  %293 = icmp uge i32 %291, %292
  br i1 %293, label %301, label %294

294:                                              ; preds = %290
  %295 = load i64, i64* %10, align 8
  %296 = load i64, i64* @ALTWERASE, align 8
  %297 = and i64 %295, %296
  %298 = icmp ne i64 %297, 0
  %299 = zext i1 %298 to i32
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %294, %290
  %302 = load i64, i64* %10, align 8
  %303 = load i64, i64* @ALTWERASE, align 8
  %304 = and i64 %302, %303
  %305 = icmp ne i64 %304, 0
  %306 = zext i1 %305 to i32
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 %307
  %309 = call i32 @bput(i8* %308)
  br label %310

310:                                              ; preds = %301, %294
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @BSD, align 4
  %313 = icmp uge i32 %311, %312
  br i1 %313, label %321, label %314

314:                                              ; preds = %310
  %315 = load i64, i64* %10, align 8
  %316 = load i64, i64* @NOFLSH, align 8
  %317 = and i64 %315, %316
  %318 = icmp ne i64 %317, 0
  %319 = zext i1 %318 to i32
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %314, %310
  %322 = load i64, i64* %10, align 8
  %323 = load i64, i64* @NOFLSH, align 8
  %324 = and i64 %322, %323
  %325 = icmp ne i64 %324, 0
  %326 = zext i1 %325 to i32
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i64 %327
  %329 = call i32 @bput(i8* %328)
  br label %330

330:                                              ; preds = %321, %314
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* @BSD, align 4
  %333 = icmp uge i32 %331, %332
  br i1 %333, label %341, label %334

334:                                              ; preds = %330
  %335 = load i64, i64* %10, align 8
  %336 = load i64, i64* @TOSTOP, align 8
  %337 = and i64 %335, %336
  %338 = icmp ne i64 %337, 0
  %339 = zext i1 %338 to i32
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %350

341:                                              ; preds = %334, %330
  %342 = load i64, i64* %10, align 8
  %343 = load i64, i64* @TOSTOP, align 8
  %344 = and i64 %342, %343
  %345 = icmp ne i64 %344, 0
  %346 = zext i1 %345 to i32
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i64 %347
  %349 = call i32 @bput(i8* %348)
  br label %350

350:                                              ; preds = %341, %334
  %351 = load i32, i32* %8, align 4
  %352 = load i32, i32* @BSD, align 4
  %353 = icmp uge i32 %351, %352
  br i1 %353, label %361, label %354

354:                                              ; preds = %350
  %355 = load i64, i64* %10, align 8
  %356 = load i64, i64* @FLUSHO, align 8
  %357 = and i64 %355, %356
  %358 = icmp ne i64 %357, 0
  %359 = zext i1 %358 to i32
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %354, %350
  %362 = load i64, i64* %10, align 8
  %363 = load i64, i64* @FLUSHO, align 8
  %364 = and i64 %362, %363
  %365 = icmp ne i64 %364, 0
  %366 = zext i1 %365 to i32
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i64 %367
  %369 = call i32 @bput(i8* %368)
  br label %370

370:                                              ; preds = %361, %354
  %371 = load i32, i32* %8, align 4
  %372 = load i32, i32* @BSD, align 4
  %373 = icmp uge i32 %371, %372
  br i1 %373, label %381, label %374

374:                                              ; preds = %370
  %375 = load i64, i64* %10, align 8
  %376 = load i64, i64* @PENDIN, align 8
  %377 = and i64 %375, %376
  %378 = icmp ne i64 %377, 0
  %379 = zext i1 %378 to i32
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %374, %370
  %382 = load i64, i64* %10, align 8
  %383 = load i64, i64* @PENDIN, align 8
  %384 = and i64 %382, %383
  %385 = icmp ne i64 %384, 0
  %386 = zext i1 %385 to i32
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 %387
  %389 = call i32 @bput(i8* %388)
  br label %390

390:                                              ; preds = %381, %374
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @BSD, align 4
  %393 = icmp uge i32 %391, %392
  br i1 %393, label %401, label %394

394:                                              ; preds = %390
  %395 = load i64, i64* %10, align 8
  %396 = load i64, i64* @NOKERNINFO, align 8
  %397 = and i64 %395, %396
  %398 = icmp ne i64 %397, 0
  %399 = zext i1 %398 to i32
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %410

401:                                              ; preds = %394, %390
  %402 = load i64, i64* %10, align 8
  %403 = load i64, i64* @NOKERNINFO, align 8
  %404 = and i64 %402, %403
  %405 = icmp ne i64 %404, 0
  %406 = zext i1 %405 to i32
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64 %407
  %409 = call i32 @bput(i8* %408)
  br label %410

410:                                              ; preds = %401, %394
  %411 = load i32, i32* %8, align 4
  %412 = load i32, i32* @BSD, align 4
  %413 = icmp uge i32 %411, %412
  br i1 %413, label %421, label %414

414:                                              ; preds = %410
  %415 = load i64, i64* %10, align 8
  %416 = load i64, i64* @EXTPROC, align 8
  %417 = and i64 %415, %416
  %418 = icmp ne i64 %417, 0
  %419 = zext i1 %418 to i32
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %414, %410
  %422 = load i64, i64* %10, align 8
  %423 = load i64, i64* @EXTPROC, align 8
  %424 = and i64 %422, %423
  %425 = icmp ne i64 %424, 0
  %426 = zext i1 %425 to i32
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i64 %427
  %429 = call i32 @bput(i8* %428)
  br label %430

430:                                              ; preds = %421, %414
  %431 = load %struct.termios*, %struct.termios** %5, align 8
  %432 = getelementptr inbounds %struct.termios, %struct.termios* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %10, align 8
  %434 = call i32 @binit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %435 = load i32, i32* %8, align 4
  %436 = load i32, i32* @BSD, align 4
  %437 = icmp uge i32 %435, %436
  br i1 %437, label %445, label %438

438:                                              ; preds = %430
  %439 = load i64, i64* %10, align 8
  %440 = load i64, i64* @ISTRIP, align 8
  %441 = and i64 %439, %440
  %442 = icmp ne i64 %441, 0
  %443 = zext i1 %442 to i32
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %454

445:                                              ; preds = %438, %430
  %446 = load i64, i64* %10, align 8
  %447 = load i64, i64* @ISTRIP, align 8
  %448 = and i64 %446, %447
  %449 = icmp ne i64 %448, 0
  %450 = zext i1 %449 to i32
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i64 %451
  %453 = call i32 @bput(i8* %452)
  br label %454

454:                                              ; preds = %445, %438
  %455 = load i32, i32* %8, align 4
  %456 = load i32, i32* @BSD, align 4
  %457 = icmp uge i32 %455, %456
  br i1 %457, label %465, label %458

458:                                              ; preds = %454
  %459 = load i64, i64* %10, align 8
  %460 = load i64, i64* @ICRNL, align 8
  %461 = and i64 %459, %460
  %462 = icmp ne i64 %461, 0
  %463 = zext i1 %462 to i32
  %464 = icmp ne i32 %463, 1
  br i1 %464, label %465, label %474

465:                                              ; preds = %458, %454
  %466 = load i64, i64* %10, align 8
  %467 = load i64, i64* @ICRNL, align 8
  %468 = and i64 %466, %467
  %469 = icmp ne i64 %468, 0
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i64 %471
  %473 = call i32 @bput(i8* %472)
  br label %474

474:                                              ; preds = %465, %458
  %475 = load i32, i32* %8, align 4
  %476 = load i32, i32* @BSD, align 4
  %477 = icmp uge i32 %475, %476
  br i1 %477, label %485, label %478

478:                                              ; preds = %474
  %479 = load i64, i64* %10, align 8
  %480 = load i64, i64* @INLCR, align 8
  %481 = and i64 %479, %480
  %482 = icmp ne i64 %481, 0
  %483 = zext i1 %482 to i32
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %494

485:                                              ; preds = %478, %474
  %486 = load i64, i64* %10, align 8
  %487 = load i64, i64* @INLCR, align 8
  %488 = and i64 %486, %487
  %489 = icmp ne i64 %488, 0
  %490 = zext i1 %489 to i32
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i64 %491
  %493 = call i32 @bput(i8* %492)
  br label %494

494:                                              ; preds = %485, %478
  %495 = load i32, i32* %8, align 4
  %496 = load i32, i32* @BSD, align 4
  %497 = icmp uge i32 %495, %496
  br i1 %497, label %505, label %498

498:                                              ; preds = %494
  %499 = load i64, i64* %10, align 8
  %500 = load i64, i64* @IGNCR, align 8
  %501 = and i64 %499, %500
  %502 = icmp ne i64 %501, 0
  %503 = zext i1 %502 to i32
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %514

505:                                              ; preds = %498, %494
  %506 = load i64, i64* %10, align 8
  %507 = load i64, i64* @IGNCR, align 8
  %508 = and i64 %506, %507
  %509 = icmp ne i64 %508, 0
  %510 = zext i1 %509 to i32
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i64 %511
  %513 = call i32 @bput(i8* %512)
  br label %514

514:                                              ; preds = %505, %498
  %515 = load i32, i32* %8, align 4
  %516 = load i32, i32* @BSD, align 4
  %517 = icmp uge i32 %515, %516
  br i1 %517, label %525, label %518

518:                                              ; preds = %514
  %519 = load i64, i64* %10, align 8
  %520 = load i64, i64* @IXON, align 8
  %521 = and i64 %519, %520
  %522 = icmp ne i64 %521, 0
  %523 = zext i1 %522 to i32
  %524 = icmp ne i32 %523, 1
  br i1 %524, label %525, label %534

525:                                              ; preds = %518, %514
  %526 = load i64, i64* %10, align 8
  %527 = load i64, i64* @IXON, align 8
  %528 = and i64 %526, %527
  %529 = icmp ne i64 %528, 0
  %530 = zext i1 %529 to i32
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i64 %531
  %533 = call i32 @bput(i8* %532)
  br label %534

534:                                              ; preds = %525, %518
  %535 = load i32, i32* %8, align 4
  %536 = load i32, i32* @BSD, align 4
  %537 = icmp uge i32 %535, %536
  br i1 %537, label %545, label %538

538:                                              ; preds = %534
  %539 = load i64, i64* %10, align 8
  %540 = load i64, i64* @IXOFF, align 8
  %541 = and i64 %539, %540
  %542 = icmp ne i64 %541, 0
  %543 = zext i1 %542 to i32
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %554

545:                                              ; preds = %538, %534
  %546 = load i64, i64* %10, align 8
  %547 = load i64, i64* @IXOFF, align 8
  %548 = and i64 %546, %547
  %549 = icmp ne i64 %548, 0
  %550 = zext i1 %549 to i32
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 %551
  %553 = call i32 @bput(i8* %552)
  br label %554

554:                                              ; preds = %545, %538
  %555 = load i32, i32* %8, align 4
  %556 = load i32, i32* @BSD, align 4
  %557 = icmp uge i32 %555, %556
  br i1 %557, label %565, label %558

558:                                              ; preds = %554
  %559 = load i64, i64* %10, align 8
  %560 = load i64, i64* @IXANY, align 8
  %561 = and i64 %559, %560
  %562 = icmp ne i64 %561, 0
  %563 = zext i1 %562 to i32
  %564 = icmp ne i32 %563, 1
  br i1 %564, label %565, label %574

565:                                              ; preds = %558, %554
  %566 = load i64, i64* %10, align 8
  %567 = load i64, i64* @IXANY, align 8
  %568 = and i64 %566, %567
  %569 = icmp ne i64 %568, 0
  %570 = zext i1 %569 to i32
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 %571
  %573 = call i32 @bput(i8* %572)
  br label %574

574:                                              ; preds = %565, %558
  %575 = load i32, i32* %8, align 4
  %576 = load i32, i32* @BSD, align 4
  %577 = icmp uge i32 %575, %576
  br i1 %577, label %585, label %578

578:                                              ; preds = %574
  %579 = load i64, i64* %10, align 8
  %580 = load i64, i64* @IMAXBEL, align 8
  %581 = and i64 %579, %580
  %582 = icmp ne i64 %581, 0
  %583 = zext i1 %582 to i32
  %584 = icmp ne i32 %583, 1
  br i1 %584, label %585, label %594

585:                                              ; preds = %578, %574
  %586 = load i64, i64* %10, align 8
  %587 = load i64, i64* @IMAXBEL, align 8
  %588 = and i64 %586, %587
  %589 = icmp ne i64 %588, 0
  %590 = zext i1 %589 to i32
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i64 %591
  %593 = call i32 @bput(i8* %592)
  br label %594

594:                                              ; preds = %585, %578
  %595 = load i32, i32* %8, align 4
  %596 = load i32, i32* @BSD, align 4
  %597 = icmp uge i32 %595, %596
  br i1 %597, label %605, label %598

598:                                              ; preds = %594
  %599 = load i64, i64* %10, align 8
  %600 = load i64, i64* @IGNBRK, align 8
  %601 = and i64 %599, %600
  %602 = icmp ne i64 %601, 0
  %603 = zext i1 %602 to i32
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %614

605:                                              ; preds = %598, %594
  %606 = load i64, i64* %10, align 8
  %607 = load i64, i64* @IGNBRK, align 8
  %608 = and i64 %606, %607
  %609 = icmp ne i64 %608, 0
  %610 = zext i1 %609 to i32
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i64 %611
  %613 = call i32 @bput(i8* %612)
  br label %614

614:                                              ; preds = %605, %598
  %615 = load i32, i32* %8, align 4
  %616 = load i32, i32* @BSD, align 4
  %617 = icmp uge i32 %615, %616
  br i1 %617, label %625, label %618

618:                                              ; preds = %614
  %619 = load i64, i64* %10, align 8
  %620 = load i64, i64* @BRKINT, align 8
  %621 = and i64 %619, %620
  %622 = icmp ne i64 %621, 0
  %623 = zext i1 %622 to i32
  %624 = icmp ne i32 %623, 1
  br i1 %624, label %625, label %634

625:                                              ; preds = %618, %614
  %626 = load i64, i64* %10, align 8
  %627 = load i64, i64* @BRKINT, align 8
  %628 = and i64 %626, %627
  %629 = icmp ne i64 %628, 0
  %630 = zext i1 %629 to i32
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i64 %631
  %633 = call i32 @bput(i8* %632)
  br label %634

634:                                              ; preds = %625, %618
  %635 = load i32, i32* %8, align 4
  %636 = load i32, i32* @BSD, align 4
  %637 = icmp uge i32 %635, %636
  br i1 %637, label %645, label %638

638:                                              ; preds = %634
  %639 = load i64, i64* %10, align 8
  %640 = load i64, i64* @INPCK, align 8
  %641 = and i64 %639, %640
  %642 = icmp ne i64 %641, 0
  %643 = zext i1 %642 to i32
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %654

645:                                              ; preds = %638, %634
  %646 = load i64, i64* %10, align 8
  %647 = load i64, i64* @INPCK, align 8
  %648 = and i64 %646, %647
  %649 = icmp ne i64 %648, 0
  %650 = zext i1 %649 to i32
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 %651
  %653 = call i32 @bput(i8* %652)
  br label %654

654:                                              ; preds = %645, %638
  %655 = load i32, i32* %8, align 4
  %656 = load i32, i32* @BSD, align 4
  %657 = icmp uge i32 %655, %656
  br i1 %657, label %665, label %658

658:                                              ; preds = %654
  %659 = load i64, i64* %10, align 8
  %660 = load i64, i64* @IGNPAR, align 8
  %661 = and i64 %659, %660
  %662 = icmp ne i64 %661, 0
  %663 = zext i1 %662 to i32
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %674

665:                                              ; preds = %658, %654
  %666 = load i64, i64* %10, align 8
  %667 = load i64, i64* @IGNPAR, align 8
  %668 = and i64 %666, %667
  %669 = icmp ne i64 %668, 0
  %670 = zext i1 %669 to i32
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i64 %671
  %673 = call i32 @bput(i8* %672)
  br label %674

674:                                              ; preds = %665, %658
  %675 = load i32, i32* %8, align 4
  %676 = load i32, i32* @BSD, align 4
  %677 = icmp uge i32 %675, %676
  br i1 %677, label %685, label %678

678:                                              ; preds = %674
  %679 = load i64, i64* %10, align 8
  %680 = load i64, i64* @PARMRK, align 8
  %681 = and i64 %679, %680
  %682 = icmp ne i64 %681, 0
  %683 = zext i1 %682 to i32
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %694

685:                                              ; preds = %678, %674
  %686 = load i64, i64* %10, align 8
  %687 = load i64, i64* @PARMRK, align 8
  %688 = and i64 %686, %687
  %689 = icmp ne i64 %688, 0
  %690 = zext i1 %689 to i32
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i64 %691
  %693 = call i32 @bput(i8* %692)
  br label %694

694:                                              ; preds = %685, %678
  %695 = load %struct.termios*, %struct.termios** %5, align 8
  %696 = getelementptr inbounds %struct.termios, %struct.termios* %695, i32 0, i32 2
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %10, align 8
  %698 = call i32 @binit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  %699 = load i32, i32* %8, align 4
  %700 = load i32, i32* @BSD, align 4
  %701 = icmp uge i32 %699, %700
  br i1 %701, label %709, label %702

702:                                              ; preds = %694
  %703 = load i64, i64* %10, align 8
  %704 = load i64, i64* @OPOST, align 8
  %705 = and i64 %703, %704
  %706 = icmp ne i64 %705, 0
  %707 = zext i1 %706 to i32
  %708 = icmp ne i32 %707, 1
  br i1 %708, label %709, label %718

709:                                              ; preds = %702, %694
  %710 = load i64, i64* %10, align 8
  %711 = load i64, i64* @OPOST, align 8
  %712 = and i64 %710, %711
  %713 = icmp ne i64 %712, 0
  %714 = zext i1 %713 to i32
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 %715
  %717 = call i32 @bput(i8* %716)
  br label %718

718:                                              ; preds = %709, %702
  %719 = load i32, i32* %8, align 4
  %720 = load i32, i32* @BSD, align 4
  %721 = icmp uge i32 %719, %720
  br i1 %721, label %729, label %722

722:                                              ; preds = %718
  %723 = load i64, i64* %10, align 8
  %724 = load i64, i64* @ONLCR, align 8
  %725 = and i64 %723, %724
  %726 = icmp ne i64 %725, 0
  %727 = zext i1 %726 to i32
  %728 = icmp ne i32 %727, 1
  br i1 %728, label %729, label %738

729:                                              ; preds = %722, %718
  %730 = load i64, i64* %10, align 8
  %731 = load i64, i64* @ONLCR, align 8
  %732 = and i64 %730, %731
  %733 = icmp ne i64 %732, 0
  %734 = zext i1 %733 to i32
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 %735
  %737 = call i32 @bput(i8* %736)
  br label %738

738:                                              ; preds = %729, %722
  %739 = load i32, i32* %8, align 4
  %740 = load i32, i32* @BSD, align 4
  %741 = icmp uge i32 %739, %740
  br i1 %741, label %749, label %742

742:                                              ; preds = %738
  %743 = load i64, i64* %10, align 8
  %744 = load i64, i64* @OCRNL, align 8
  %745 = and i64 %743, %744
  %746 = icmp ne i64 %745, 0
  %747 = zext i1 %746 to i32
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %758

749:                                              ; preds = %742, %738
  %750 = load i64, i64* %10, align 8
  %751 = load i64, i64* @OCRNL, align 8
  %752 = and i64 %750, %751
  %753 = icmp ne i64 %752, 0
  %754 = zext i1 %753 to i32
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i64 %755
  %757 = call i32 @bput(i8* %756)
  br label %758

758:                                              ; preds = %749, %742
  %759 = load i64, i64* %10, align 8
  %760 = load i64, i64* @TABDLY, align 8
  %761 = and i64 %759, %760
  switch i64 %761, label %766 [
    i64 129, label %762
    i64 128, label %764
  ]

762:                                              ; preds = %758
  %763 = call i32 @bput(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %766

764:                                              ; preds = %758
  %765 = call i32 @bput(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  br label %766

766:                                              ; preds = %758, %764, %762
  %767 = load i32, i32* %8, align 4
  %768 = load i32, i32* @BSD, align 4
  %769 = icmp uge i32 %767, %768
  br i1 %769, label %777, label %770

770:                                              ; preds = %766
  %771 = load i64, i64* %10, align 8
  %772 = load i64, i64* @ONOCR, align 8
  %773 = and i64 %771, %772
  %774 = icmp ne i64 %773, 0
  %775 = zext i1 %774 to i32
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %786

777:                                              ; preds = %770, %766
  %778 = load i64, i64* %10, align 8
  %779 = load i64, i64* @ONOCR, align 8
  %780 = and i64 %778, %779
  %781 = icmp ne i64 %780, 0
  %782 = zext i1 %781 to i32
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i64 %783
  %785 = call i32 @bput(i8* %784)
  br label %786

786:                                              ; preds = %777, %770
  %787 = load i32, i32* %8, align 4
  %788 = load i32, i32* @BSD, align 4
  %789 = icmp uge i32 %787, %788
  br i1 %789, label %797, label %790

790:                                              ; preds = %786
  %791 = load i64, i64* %10, align 8
  %792 = load i64, i64* @ONLRET, align 8
  %793 = and i64 %791, %792
  %794 = icmp ne i64 %793, 0
  %795 = zext i1 %794 to i32
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %806

797:                                              ; preds = %790, %786
  %798 = load i64, i64* %10, align 8
  %799 = load i64, i64* @ONLRET, align 8
  %800 = and i64 %798, %799
  %801 = icmp ne i64 %800, 0
  %802 = zext i1 %801 to i32
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i64 %803
  %805 = call i32 @bput(i8* %804)
  br label %806

806:                                              ; preds = %797, %790
  %807 = load %struct.termios*, %struct.termios** %5, align 8
  %808 = getelementptr inbounds %struct.termios, %struct.termios* %807, i32 0, i32 3
  %809 = load i64, i64* %808, align 8
  store i64 %809, i64* %10, align 8
  %810 = call i32 @binit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %811 = load i32, i32* %8, align 4
  %812 = load i32, i32* @BSD, align 4
  %813 = icmp uge i32 %811, %812
  br i1 %813, label %821, label %814

814:                                              ; preds = %806
  %815 = load i64, i64* %10, align 8
  %816 = load i64, i64* @CREAD, align 8
  %817 = and i64 %815, %816
  %818 = icmp ne i64 %817, 0
  %819 = zext i1 %818 to i32
  %820 = icmp ne i32 %819, 1
  br i1 %820, label %821, label %830

821:                                              ; preds = %814, %806
  %822 = load i64, i64* %10, align 8
  %823 = load i64, i64* @CREAD, align 8
  %824 = and i64 %822, %823
  %825 = icmp ne i64 %824, 0
  %826 = zext i1 %825 to i32
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i64 %827
  %829 = call i32 @bput(i8* %828)
  br label %830

830:                                              ; preds = %821, %814
  %831 = load i64, i64* %10, align 8
  %832 = load i64, i64* @CSIZE, align 8
  %833 = and i64 %831, %832
  switch i64 %833, label %842 [
    i64 135, label %834
    i64 134, label %836
    i64 133, label %838
    i64 132, label %840
  ]

834:                                              ; preds = %830
  %835 = call i32 @bput(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0))
  br label %842

836:                                              ; preds = %830
  %837 = call i32 @bput(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0))
  br label %842

838:                                              ; preds = %830
  %839 = call i32 @bput(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0))
  br label %842

840:                                              ; preds = %830
  %841 = call i32 @bput(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0))
  br label %842

842:                                              ; preds = %830, %840, %838, %836, %834
  %843 = load i64, i64* %10, align 8
  %844 = load i32, i32* @PARENB, align 4
  %845 = sext i32 %844 to i64
  %846 = and i64 %843, %845
  %847 = icmp ne i64 %846, 0
  %848 = zext i1 %847 to i32
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i64 %849
  %851 = call i32 @bput(i8* %850)
  %852 = load i32, i32* %8, align 4
  %853 = load i32, i32* @BSD, align 4
  %854 = icmp uge i32 %852, %853
  br i1 %854, label %862, label %855

855:                                              ; preds = %842
  %856 = load i64, i64* %10, align 8
  %857 = load i64, i64* @PARODD, align 8
  %858 = and i64 %856, %857
  %859 = icmp ne i64 %858, 0
  %860 = zext i1 %859 to i32
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %871

862:                                              ; preds = %855, %842
  %863 = load i64, i64* %10, align 8
  %864 = load i64, i64* @PARODD, align 8
  %865 = and i64 %863, %864
  %866 = icmp ne i64 %865, 0
  %867 = zext i1 %866 to i32
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i64 %868
  %870 = call i32 @bput(i8* %869)
  br label %871

871:                                              ; preds = %862, %855
  %872 = load i32, i32* %8, align 4
  %873 = load i32, i32* @BSD, align 4
  %874 = icmp uge i32 %872, %873
  br i1 %874, label %882, label %875

875:                                              ; preds = %871
  %876 = load i64, i64* %10, align 8
  %877 = load i64, i64* @HUPCL, align 8
  %878 = and i64 %876, %877
  %879 = icmp ne i64 %878, 0
  %880 = zext i1 %879 to i32
  %881 = icmp ne i32 %880, 1
  br i1 %881, label %882, label %891

882:                                              ; preds = %875, %871
  %883 = load i64, i64* %10, align 8
  %884 = load i64, i64* @HUPCL, align 8
  %885 = and i64 %883, %884
  %886 = icmp ne i64 %885, 0
  %887 = zext i1 %886 to i32
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i64 %888
  %890 = call i32 @bput(i8* %889)
  br label %891

891:                                              ; preds = %882, %875
  %892 = load i32, i32* %8, align 4
  %893 = load i32, i32* @BSD, align 4
  %894 = icmp uge i32 %892, %893
  br i1 %894, label %902, label %895

895:                                              ; preds = %891
  %896 = load i64, i64* %10, align 8
  %897 = load i64, i64* @CLOCAL, align 8
  %898 = and i64 %896, %897
  %899 = icmp ne i64 %898, 0
  %900 = zext i1 %899 to i32
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %911

902:                                              ; preds = %895, %891
  %903 = load i64, i64* %10, align 8
  %904 = load i64, i64* @CLOCAL, align 8
  %905 = and i64 %903, %904
  %906 = icmp ne i64 %905, 0
  %907 = zext i1 %906 to i32
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i64 %908
  %910 = call i32 @bput(i8* %909)
  br label %911

911:                                              ; preds = %902, %895
  %912 = load i32, i32* %8, align 4
  %913 = load i32, i32* @BSD, align 4
  %914 = icmp uge i32 %912, %913
  br i1 %914, label %922, label %915

915:                                              ; preds = %911
  %916 = load i64, i64* %10, align 8
  %917 = load i64, i64* @CSTOPB, align 8
  %918 = and i64 %916, %917
  %919 = icmp ne i64 %918, 0
  %920 = zext i1 %919 to i32
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %931

922:                                              ; preds = %915, %911
  %923 = load i64, i64* %10, align 8
  %924 = load i64, i64* @CSTOPB, align 8
  %925 = and i64 %923, %924
  %926 = icmp ne i64 %925, 0
  %927 = zext i1 %926 to i32
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i64 %928
  %930 = call i32 @bput(i8* %929)
  br label %931

931:                                              ; preds = %922, %915
  %932 = load i64, i64* %10, align 8
  %933 = and i64 %932, 137
  switch i64 %933, label %938 [
    i64 137, label %934
    i64 136, label %936
  ]

934:                                              ; preds = %931
  %935 = call i32 @bput(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0))
  br label %957

936:                                              ; preds = %931
  %937 = call i32 @bput(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0))
  br label %957

938:                                              ; preds = %931
  %939 = load i32, i32* %8, align 4
  %940 = load i32, i32* @BSD, align 4
  %941 = icmp uge i32 %939, %940
  br i1 %941, label %948, label %942

942:                                              ; preds = %938
  %943 = load i64, i64* %10, align 8
  %944 = and i64 %943, 137
  %945 = icmp ne i64 %944, 0
  %946 = zext i1 %945 to i32
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %948, label %956

948:                                              ; preds = %942, %938
  %949 = load i64, i64* %10, align 8
  %950 = and i64 %949, 137
  %951 = icmp ne i64 %950, 0
  %952 = zext i1 %951 to i32
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i64 %953
  %955 = call i32 @bput(i8* %954)
  br label %956

956:                                              ; preds = %948, %942
  br label %957

957:                                              ; preds = %956, %936, %934
  %958 = load i32, i32* %8, align 4
  %959 = load i32, i32* @BSD, align 4
  %960 = icmp uge i32 %958, %959
  br i1 %960, label %968, label %961

961:                                              ; preds = %957
  %962 = load i64, i64* %10, align 8
  %963 = load i64, i64* @CDSR_OFLOW, align 8
  %964 = and i64 %962, %963
  %965 = icmp ne i64 %964, 0
  %966 = zext i1 %965 to i32
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %968, label %977

968:                                              ; preds = %961, %957
  %969 = load i64, i64* %10, align 8
  %970 = load i64, i64* @CDSR_OFLOW, align 8
  %971 = and i64 %969, %970
  %972 = icmp ne i64 %971, 0
  %973 = zext i1 %972 to i32
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i64 %974
  %976 = call i32 @bput(i8* %975)
  br label %977

977:                                              ; preds = %968, %961
  %978 = load i32, i32* %8, align 4
  %979 = load i32, i32* @BSD, align 4
  %980 = icmp uge i32 %978, %979
  br i1 %980, label %988, label %981

981:                                              ; preds = %977
  %982 = load i64, i64* %10, align 8
  %983 = load i64, i64* @CDTR_IFLOW, align 8
  %984 = and i64 %982, %983
  %985 = icmp ne i64 %984, 0
  %986 = zext i1 %985 to i32
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %988, label %997

988:                                              ; preds = %981, %977
  %989 = load i64, i64* %10, align 8
  %990 = load i64, i64* @CDTR_IFLOW, align 8
  %991 = and i64 %989, %990
  %992 = icmp ne i64 %991, 0
  %993 = zext i1 %992 to i32
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i64 %994
  %996 = call i32 @bput(i8* %995)
  br label %997

997:                                              ; preds = %988, %981
  %998 = load i32, i32* %8, align 4
  %999 = load i32, i32* @BSD, align 4
  %1000 = icmp uge i32 %998, %999
  br i1 %1000, label %1008, label %1001

1001:                                             ; preds = %997
  %1002 = load i64, i64* %10, align 8
  %1003 = load i64, i64* @MDMBUF, align 8
  %1004 = and i64 %1002, %1003
  %1005 = icmp ne i64 %1004, 0
  %1006 = zext i1 %1005 to i32
  %1007 = icmp ne i32 %1006, 0
  br i1 %1007, label %1008, label %1017

1008:                                             ; preds = %1001, %997
  %1009 = load i64, i64* %10, align 8
  %1010 = load i64, i64* @MDMBUF, align 8
  %1011 = and i64 %1009, %1010
  %1012 = icmp ne i64 %1011, 0
  %1013 = zext i1 %1012 to i32
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i64 %1014
  %1016 = call i32 @bput(i8* %1015)
  br label %1017

1017:                                             ; preds = %1008, %1001
  %1018 = load i64, i64* %10, align 8
  %1019 = load i32, i32* @CNO_RTSDTR, align 4
  %1020 = sext i32 %1019 to i64
  %1021 = and i64 %1018, %1020
  %1022 = icmp ne i64 %1021, 0
  br i1 %1022, label %1023, label %1025

1023:                                             ; preds = %1017
  %1024 = call i32 @bput(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0))
  br label %1032

1025:                                             ; preds = %1017
  %1026 = load i32, i32* %8, align 4
  %1027 = load i32, i32* @BSD, align 4
  %1028 = icmp uge i32 %1026, %1027
  br i1 %1028, label %1029, label %1031

1029:                                             ; preds = %1025
  %1030 = call i32 @bput(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0))
  br label %1031

1031:                                             ; preds = %1029, %1025
  br label %1032

1032:                                             ; preds = %1031, %1023
  %1033 = load %struct.termios*, %struct.termios** %5, align 8
  %1034 = getelementptr inbounds %struct.termios, %struct.termios* %1033, i32 0, i32 4
  %1035 = load i64*, i64** %1034, align 8
  store i64* %1035, i64** %11, align 8
  %1036 = load i32, i32* %8, align 4
  %1037 = load i32, i32* @POSIX, align 4
  %1038 = icmp eq i32 %1036, %1037
  br i1 %1038, label %1039, label %1068

1039:                                             ; preds = %1032
  %1040 = call i32 @binit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0))
  %1041 = load %struct.cchar*, %struct.cchar** @cchars1, align 8
  store %struct.cchar* %1041, %struct.cchar** %9, align 8
  br label %1042

1042:                                             ; preds = %1063, %1039
  %1043 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1044 = getelementptr inbounds %struct.cchar, %struct.cchar* %1043, i32 0, i32 0
  %1045 = load i8*, i8** %1044, align 8
  %1046 = icmp ne i8* %1045, null
  br i1 %1046, label %1047, label %1066

1047:                                             ; preds = %1042
  %1048 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %1049 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1050 = getelementptr inbounds %struct.cchar, %struct.cchar* %1049, i32 0, i32 0
  %1051 = load i8*, i8** %1050, align 8
  %1052 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1053 = load i64*, i64** %11, align 8
  %1054 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1055 = getelementptr inbounds %struct.cchar, %struct.cchar* %1054, i32 0, i32 1
  %1056 = load i64, i64* %1055, align 8
  %1057 = getelementptr inbounds i64, i64* %1053, i64 %1056
  %1058 = load i64, i64* %1057, align 8
  %1059 = call i8* @ccval(%struct.cchar* %1052, i64 %1058)
  %1060 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %1048, i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i64 0, i64 0), i8* %1051, i8* %1059)
  %1061 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %1062 = call i32 @bput(i8* %1061)
  br label %1063

1063:                                             ; preds = %1047
  %1064 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1065 = getelementptr inbounds %struct.cchar, %struct.cchar* %1064, i32 1
  store %struct.cchar* %1065, %struct.cchar** %9, align 8
  br label %1042

1066:                                             ; preds = %1042
  %1067 = call i32 @binit(i8* null)
  br label %1149

1068:                                             ; preds = %1032
  %1069 = call i32 @binit(i8* null)
  %1070 = load %struct.cchar*, %struct.cchar** @cchars1, align 8
  store %struct.cchar* %1070, %struct.cchar** %9, align 8
  store i32 0, i32* %12, align 4
  br label %1071

1071:                                             ; preds = %1137, %1068
  %1072 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1073 = getelementptr inbounds %struct.cchar, %struct.cchar* %1072, i32 0, i32 0
  %1074 = load i8*, i8** %1073, align 8
  %1075 = icmp ne i8* %1074, null
  br i1 %1075, label %1076, label %1140

1076:                                             ; preds = %1071
  %1077 = load i32, i32* %8, align 4
  %1078 = load i32, i32* @BSD, align 4
  %1079 = icmp ne i32 %1077, %1078
  br i1 %1079, label %1080, label %1092

1080:                                             ; preds = %1076
  %1081 = load i64*, i64** %11, align 8
  %1082 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1083 = getelementptr inbounds %struct.cchar, %struct.cchar* %1082, i32 0, i32 1
  %1084 = load i64, i64* %1083, align 8
  %1085 = getelementptr inbounds i64, i64* %1081, i64 %1084
  %1086 = load i64, i64* %1085, align 8
  %1087 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1088 = getelementptr inbounds %struct.cchar, %struct.cchar* %1087, i32 0, i32 2
  %1089 = load i64, i64* %1088, align 8
  %1090 = icmp eq i64 %1086, %1089
  br i1 %1090, label %1091, label %1092

1091:                                             ; preds = %1080
  br label %1137

1092:                                             ; preds = %1080, %1076
  %1093 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %1094 = load i32, i32* %12, align 4
  %1095 = mul nsw i32 %1094, 8
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i8, i8* %1093, i64 %1096
  %1098 = load i32, i32* %12, align 4
  %1099 = mul nsw i32 %1098, 8
  %1100 = sext i32 %1099 to i64
  %1101 = sub i64 100, %1100
  %1102 = trunc i64 %1101 to i32
  %1103 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1104 = getelementptr inbounds %struct.cchar, %struct.cchar* %1103, i32 0, i32 0
  %1105 = load i8*, i8** %1104, align 8
  %1106 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %1097, i32 %1102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8* %1105)
  %1107 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1108 = load i32, i32* %12, align 4
  %1109 = mul nsw i32 %1108, 8
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds i8, i8* %1107, i64 %1110
  %1112 = load i32, i32* %12, align 4
  %1113 = mul nsw i32 %1112, 8
  %1114 = sext i32 %1113 to i64
  %1115 = sub i64 100, %1114
  %1116 = trunc i64 %1115 to i32
  %1117 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1118 = load i64*, i64** %11, align 8
  %1119 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1120 = getelementptr inbounds %struct.cchar, %struct.cchar* %1119, i32 0, i32 1
  %1121 = load i64, i64* %1120, align 8
  %1122 = getelementptr inbounds i64, i64* %1118, i64 %1121
  %1123 = load i64, i64* %1122, align 8
  %1124 = call i8* @ccval(%struct.cchar* %1117, i64 %1123)
  %1125 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %1111, i32 %1116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8* %1124)
  %1126 = load i32, i32* %12, align 4
  %1127 = add nsw i32 %1126, 1
  store i32 %1127, i32* %12, align 4
  %1128 = load i32, i32* @LINELENGTH, align 4
  %1129 = sdiv i32 %1128, 8
  %1130 = icmp eq i32 %1127, %1129
  br i1 %1130, label %1131, label %1136

1131:                                             ; preds = %1092
  store i32 0, i32* %12, align 4
  %1132 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %1133 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i8* %1132)
  %1134 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1135 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i8* %1134)
  br label %1136

1136:                                             ; preds = %1131, %1092
  br label %1137

1137:                                             ; preds = %1136, %1091
  %1138 = load %struct.cchar*, %struct.cchar** %9, align 8
  %1139 = getelementptr inbounds %struct.cchar, %struct.cchar* %1138, i32 1
  store %struct.cchar* %1139, %struct.cchar** %9, align 8
  br label %1071

1140:                                             ; preds = %1071
  %1141 = load i32, i32* %12, align 4
  %1142 = icmp ne i32 %1141, 0
  br i1 %1142, label %1143, label %1148

1143:                                             ; preds = %1140
  %1144 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %1145 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i8* %1144)
  %1146 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %1147 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i8* %1146)
  br label %1148

1148:                                             ; preds = %1143, %1140
  br label %1149

1149:                                             ; preds = %1148, %1066
  ret void
}

declare dso_local i64 @printf(i8*, ...) #1

declare dso_local i32 @cfgetispeed(%struct.termios*) #1

declare dso_local i32 @cfgetospeed(%struct.termios*) #1

declare dso_local i32 @binit(i8*) #1

declare dso_local i32 @bput(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @ccval(%struct.cchar*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
