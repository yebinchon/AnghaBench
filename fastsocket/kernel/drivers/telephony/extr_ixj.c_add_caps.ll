; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_add_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_add_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i8*, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@PHONE_VENDOR_QUICKNET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Quicknet Technologies, Inc. (www.quicknet.net)\00", align 1
@vendor = common dso_local global i8* null, align 8
@device = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Quicknet Internet PhoneJACK\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Quicknet Internet LineJACK\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Quicknet Internet PhoneJACK Lite\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Quicknet Internet PhoneJACK PCI\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Quicknet Internet PhoneCARD\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"POTS\00", align 1
@port = common dso_local global i8* null, align 8
@pots = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@speaker = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"HANDSET\00", align 1
@handset = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"PSTN\00", align 1
@pstn = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"ULAW\00", align 1
@codec = common dso_local global i8* null, align 8
@ULAW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"LINEAR 16 bit\00", align 1
@LINEAR16 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"LINEAR 8 bit\00", align 1
@LINEAR8 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Windows Sound System\00", align 1
@WSS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"ALAW\00", align 1
@ALAW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"G.723.1 6.3kbps\00", align 1
@G723_63 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"G.723.1 5.3kbps\00", align 1
@G723_53 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"TrueSpeech 4.8kbps\00", align 1
@TS48 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"TrueSpeech 4.1kbps\00", align 1
@TS41 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"TrueSpeech 8.5kbps\00", align 1
@TS85 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"G.728 16kbps\00", align 1
@G728 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"G.729A 8kbps\00", align 1
@G729 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"G.729B 8kbps\00", align 1
@G729B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @add_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_caps(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @PHONE_VENDOR_QUICKNET, align 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 %5, i32* %13, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** @vendor, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i8* %24, i8** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = trunc i64 %35 to i32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i32 %37, i32* %45, align 4
  %46 = load i8*, i8** @device, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i8* %46, i8** %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %113 [
    i32 130, label %58
    i32 132, label %69
    i32 129, label %80
    i32 128, label %91
    i32 131, label %102
  ]

58:                                               ; preds = %1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @strcpy(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %113

69:                                               ; preds = %1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @strcpy(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %113

80:                                               ; preds = %1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @strcpy(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %113

91:                                               ; preds = %1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strcpy(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %113

102:                                              ; preds = %1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @strcpy(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %113

113:                                              ; preds = %1, %102, %91, %80, %69, %58
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 %116, i32* %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = trunc i64 %127 to i32
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32 %129, i32* %137, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strcpy(i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i8*, i8** @port, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  store i8* %148, i8** %156, align 8
  %157 = load i32, i32* @pots, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i32 %157, i32* %165, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = trunc i64 %168 to i32
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  store i32 %170, i32* %178, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %224 [
    i32 130, label %182
    i32 132, label %182
    i32 128, label %182
    i32 131, label %182
  ]

182:                                              ; preds = %113, %113, %113, %113
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @strcpy(i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i8*, i8** @port, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  store i8* %193, i8** %201, align 8
  %202 = load i32, i32* @speaker, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 %202, i32* %210, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %212, align 8
  %215 = trunc i64 %213 to i32
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  store i32 %215, i32* %223, align 4
  br label %224

224:                                              ; preds = %113, %182
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %271 [
    i32 130, label %229
  ]

229:                                              ; preds = %225
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @strcpy(i32 %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %240 = load i8*, i8** @port, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  store i8* %240, i8** %248, align 8
  %249 = load i32, i32* @handset, align 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  store i32 %249, i32* %257, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %259, align 8
  %262 = trunc i64 %260 to i32
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  store i32 %262, i32* %270, align 4
  br label %272

271:                                              ; preds = %225
  br label %272

272:                                              ; preds = %271, %229
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  switch i32 %275, label %318 [
    i32 132, label %276
  ]

276:                                              ; preds = %272
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @strcpy(i32 %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %287 = load i8*, i8** @port, align 8
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 2
  store i8* %287, i8** %295, align 8
  %296 = load i32, i32* @pstn, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %298, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  store i32 %296, i32* %304, align 8
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %306, align 8
  %309 = trunc i64 %307 to i32
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %311, align 8
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  store i32 %309, i32* %317, align 4
  br label %319

318:                                              ; preds = %272
  br label %319

319:                                              ; preds = %318, %276
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @strcpy(i32 %328, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %330 = load i8*, i8** @codec, align 8
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 2
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %332, align 8
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 2
  store i8* %330, i8** %338, align 8
  %339 = load i32, i32* @ULAW, align 4
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %341, align 8
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 0
  store i32 %339, i32* %347, align 8
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = add i64 %350, 1
  store i64 %351, i64* %349, align 8
  %352 = trunc i64 %350 to i32
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 2
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 1
  store i32 %352, i32* %360, align 4
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %362, align 8
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @strcpy(i32 %369, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %371 = load i8*, i8** @codec, align 8
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 2
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %373, align 8
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 2
  store i8* %371, i8** %379, align 8
  %380 = load i32, i32* @LINEAR16, align 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 2
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %382, align 8
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 0
  store i32 %380, i32* %388, align 8
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = add i64 %391, 1
  store i64 %392, i64* %390, align 8
  %393 = trunc i64 %391 to i32
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 2
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %395, align 8
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 1
  store i32 %393, i32* %401, align 4
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %403, align 8
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @strcpy(i32 %410, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %412 = load i8*, i8** @codec, align 8
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 2
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %414, align 8
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 2
  store i8* %412, i8** %420, align 8
  %421 = load i32, i32* @LINEAR8, align 4
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 2
  %424 = load %struct.TYPE_10__*, %struct.TYPE_10__** %423, align 8
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 0
  store i32 %421, i32* %429, align 8
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = add i64 %432, 1
  store i64 %433, i64* %431, align 8
  %434 = trunc i64 %432 to i32
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 2
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %436, align 8
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 1
  store i32 %434, i32* %442, align 4
  %443 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 2
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %444, align 8
  %446 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @strcpy(i32 %451, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %453 = load i8*, i8** @codec, align 8
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 2
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %455, align 8
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 2
  store i8* %453, i8** %461, align 8
  %462 = load i32, i32* @WSS, align 4
  %463 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %463, i32 0, i32 2
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %464, align 8
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 0
  store i32 %462, i32* %470, align 8
  %471 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %472 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = add i64 %473, 1
  store i64 %474, i64* %472, align 8
  %475 = trunc i64 %473 to i32
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i32 0, i32 2
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %477, align 8
  %479 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 1
  store i32 %475, i32* %483, align 4
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 2
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %485, align 8
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @strcpy(i32 %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %494 = load i8*, i8** @codec, align 8
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 2
  %497 = load %struct.TYPE_10__*, %struct.TYPE_10__** %496, align 8
  %498 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %499 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 2
  store i8* %494, i8** %502, align 8
  %503 = load i32, i32* @ALAW, align 4
  %504 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 2
  %506 = load %struct.TYPE_10__*, %struct.TYPE_10__** %505, align 8
  %507 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %508 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %507, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %506, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 0
  store i32 %503, i32* %511, align 8
  %512 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %513 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = add i64 %514, 1
  store i64 %515, i64* %513, align 8
  %516 = trunc i64 %514 to i32
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 2
  %519 = load %struct.TYPE_10__*, %struct.TYPE_10__** %518, align 8
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %523, i32 0, i32 1
  store i32 %516, i32* %524, align 4
  %525 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %526 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %525, i32 0, i32 4
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = icmp ne i32 %528, 32
  br i1 %529, label %536, label %530

530:                                              ; preds = %319
  %531 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 5
  %533 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = icmp ne i32 %534, 18
  br i1 %535, label %536, label %701

536:                                              ; preds = %530, %319
  %537 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 2
  %539 = load %struct.TYPE_10__*, %struct.TYPE_10__** %538, align 8
  %540 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %539, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 8
  %546 = call i32 @strcpy(i32 %545, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %547 = load i8*, i8** @codec, align 8
  %548 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %549 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %548, i32 0, i32 2
  %550 = load %struct.TYPE_10__*, %struct.TYPE_10__** %549, align 8
  %551 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %552 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %550, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 2
  store i8* %547, i8** %555, align 8
  %556 = load i32, i32* @G723_63, align 4
  %557 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %558 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %557, i32 0, i32 2
  %559 = load %struct.TYPE_10__*, %struct.TYPE_10__** %558, align 8
  %560 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %561 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %559, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %563, i32 0, i32 0
  store i32 %556, i32* %564, align 8
  %565 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %566 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = add i64 %567, 1
  store i64 %568, i64* %566, align 8
  %569 = trunc i64 %567 to i32
  %570 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %571 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %570, i32 0, i32 2
  %572 = load %struct.TYPE_10__*, %struct.TYPE_10__** %571, align 8
  %573 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 0, i32 0
  %575 = load i64, i64* %574, align 8
  %576 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i64 %575
  %577 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %576, i32 0, i32 1
  store i32 %569, i32* %577, align 4
  %578 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %579 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %578, i32 0, i32 2
  %580 = load %struct.TYPE_10__*, %struct.TYPE_10__** %579, align 8
  %581 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %582 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %581, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %580, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %584, i32 0, i32 3
  %586 = load i32, i32* %585, align 8
  %587 = call i32 @strcpy(i32 %586, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %588 = load i8*, i8** @codec, align 8
  %589 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %590 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %589, i32 0, i32 2
  %591 = load %struct.TYPE_10__*, %struct.TYPE_10__** %590, align 8
  %592 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %592, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 2
  store i8* %588, i8** %596, align 8
  %597 = load i32, i32* @G723_53, align 4
  %598 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %599 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %598, i32 0, i32 2
  %600 = load %struct.TYPE_10__*, %struct.TYPE_10__** %599, align 8
  %601 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %602 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %601, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %600, i64 %603
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i32 0, i32 0
  store i32 %597, i32* %605, align 8
  %606 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %607 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = add i64 %608, 1
  store i64 %609, i64* %607, align 8
  %610 = trunc i64 %608 to i32
  %611 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %612 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %611, i32 0, i32 2
  %613 = load %struct.TYPE_10__*, %struct.TYPE_10__** %612, align 8
  %614 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %615 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %613, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 1
  store i32 %610, i32* %618, align 4
  %619 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %620 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %619, i32 0, i32 2
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** %620, align 8
  %622 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 0
  %624 = load i64, i64* %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %621, i64 %624
  %626 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 8
  %628 = call i32 @strcpy(i32 %627, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %629 = load i8*, i8** @codec, align 8
  %630 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %631 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %630, i32 0, i32 2
  %632 = load %struct.TYPE_10__*, %struct.TYPE_10__** %631, align 8
  %633 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %634 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %633, i32 0, i32 0
  %635 = load i64, i64* %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %632, i64 %635
  %637 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %636, i32 0, i32 2
  store i8* %629, i8** %637, align 8
  %638 = load i32, i32* @TS48, align 4
  %639 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %640 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %639, i32 0, i32 2
  %641 = load %struct.TYPE_10__*, %struct.TYPE_10__** %640, align 8
  %642 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %643 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %642, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %641, i64 %644
  %646 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %645, i32 0, i32 0
  store i32 %638, i32* %646, align 8
  %647 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %648 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %647, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = add i64 %649, 1
  store i64 %650, i64* %648, align 8
  %651 = trunc i64 %649 to i32
  %652 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %653 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %652, i32 0, i32 2
  %654 = load %struct.TYPE_10__*, %struct.TYPE_10__** %653, align 8
  %655 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %656 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %655, i32 0, i32 0
  %657 = load i64, i64* %656, align 8
  %658 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %654, i64 %657
  %659 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %658, i32 0, i32 1
  store i32 %651, i32* %659, align 4
  %660 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %661 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %660, i32 0, i32 2
  %662 = load %struct.TYPE_10__*, %struct.TYPE_10__** %661, align 8
  %663 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %664 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %662, i64 %665
  %667 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %666, i32 0, i32 3
  %668 = load i32, i32* %667, align 8
  %669 = call i32 @strcpy(i32 %668, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %670 = load i8*, i8** @codec, align 8
  %671 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %672 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %671, i32 0, i32 2
  %673 = load %struct.TYPE_10__*, %struct.TYPE_10__** %672, align 8
  %674 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %675 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %674, i32 0, i32 0
  %676 = load i64, i64* %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %673, i64 %676
  %678 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %677, i32 0, i32 2
  store i8* %670, i8** %678, align 8
  %679 = load i32, i32* @TS41, align 4
  %680 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %681 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %680, i32 0, i32 2
  %682 = load %struct.TYPE_10__*, %struct.TYPE_10__** %681, align 8
  %683 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %684 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %683, i32 0, i32 0
  %685 = load i64, i64* %684, align 8
  %686 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %682, i64 %685
  %687 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %686, i32 0, i32 0
  store i32 %679, i32* %687, align 8
  %688 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %689 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %688, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = add i64 %690, 1
  store i64 %691, i64* %689, align 8
  %692 = trunc i64 %690 to i32
  %693 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %694 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %693, i32 0, i32 2
  %695 = load %struct.TYPE_10__*, %struct.TYPE_10__** %694, align 8
  %696 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %697 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %696, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %695, i64 %698
  %700 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %699, i32 0, i32 1
  store i32 %692, i32* %700, align 4
  br label %701

701:                                              ; preds = %536, %530
  %702 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %703 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %702, i32 0, i32 4
  %704 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 8
  %706 = icmp eq i32 %705, 32
  br i1 %706, label %713, label %707

707:                                              ; preds = %701
  %708 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %709 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %708, i32 0, i32 3
  %710 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %709, i32 0, i32 1
  %711 = load i64, i64* %710, align 8
  %712 = icmp ne i64 %711, 0
  br i1 %712, label %713, label %755

713:                                              ; preds = %707, %701
  %714 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %715 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %714, i32 0, i32 2
  %716 = load %struct.TYPE_10__*, %struct.TYPE_10__** %715, align 8
  %717 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %718 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %717, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %716, i64 %719
  %721 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %720, i32 0, i32 3
  %722 = load i32, i32* %721, align 8
  %723 = call i32 @strcpy(i32 %722, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %724 = load i8*, i8** @codec, align 8
  %725 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %726 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %725, i32 0, i32 2
  %727 = load %struct.TYPE_10__*, %struct.TYPE_10__** %726, align 8
  %728 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %729 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %728, i32 0, i32 0
  %730 = load i64, i64* %729, align 8
  %731 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %727, i64 %730
  %732 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %731, i32 0, i32 2
  store i8* %724, i8** %732, align 8
  %733 = load i32, i32* @TS85, align 4
  %734 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %735 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %734, i32 0, i32 2
  %736 = load %struct.TYPE_10__*, %struct.TYPE_10__** %735, align 8
  %737 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %738 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %737, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %736, i64 %739
  %741 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %740, i32 0, i32 0
  store i32 %733, i32* %741, align 8
  %742 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %743 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %742, i32 0, i32 0
  %744 = load i64, i64* %743, align 8
  %745 = add i64 %744, 1
  store i64 %745, i64* %743, align 8
  %746 = trunc i64 %744 to i32
  %747 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %748 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %747, i32 0, i32 2
  %749 = load %struct.TYPE_10__*, %struct.TYPE_10__** %748, align 8
  %750 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %751 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %750, i32 0, i32 0
  %752 = load i64, i64* %751, align 8
  %753 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %749, i64 %752
  %754 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %753, i32 0, i32 1
  store i32 %746, i32* %754, align 4
  br label %755

755:                                              ; preds = %713, %707
  %756 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %757 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %756, i32 0, i32 4
  %758 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %757, i32 0, i32 0
  %759 = load i32, i32* %758, align 8
  %760 = icmp eq i32 %759, 33
  br i1 %760, label %761, label %803

761:                                              ; preds = %755
  %762 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %763 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %762, i32 0, i32 2
  %764 = load %struct.TYPE_10__*, %struct.TYPE_10__** %763, align 8
  %765 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %766 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %765, i32 0, i32 0
  %767 = load i64, i64* %766, align 8
  %768 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %764, i64 %767
  %769 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %768, i32 0, i32 3
  %770 = load i32, i32* %769, align 8
  %771 = call i32 @strcpy(i32 %770, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %772 = load i8*, i8** @codec, align 8
  %773 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %774 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %773, i32 0, i32 2
  %775 = load %struct.TYPE_10__*, %struct.TYPE_10__** %774, align 8
  %776 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %777 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %776, i32 0, i32 0
  %778 = load i64, i64* %777, align 8
  %779 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %775, i64 %778
  %780 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %779, i32 0, i32 2
  store i8* %772, i8** %780, align 8
  %781 = load i32, i32* @G728, align 4
  %782 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %783 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %782, i32 0, i32 2
  %784 = load %struct.TYPE_10__*, %struct.TYPE_10__** %783, align 8
  %785 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %786 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %785, i32 0, i32 0
  %787 = load i64, i64* %786, align 8
  %788 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %784, i64 %787
  %789 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %788, i32 0, i32 0
  store i32 %781, i32* %789, align 8
  %790 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %791 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %790, i32 0, i32 0
  %792 = load i64, i64* %791, align 8
  %793 = add i64 %792, 1
  store i64 %793, i64* %791, align 8
  %794 = trunc i64 %792 to i32
  %795 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %796 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %795, i32 0, i32 2
  %797 = load %struct.TYPE_10__*, %struct.TYPE_10__** %796, align 8
  %798 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %799 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %798, i32 0, i32 0
  %800 = load i64, i64* %799, align 8
  %801 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %797, i64 %800
  %802 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %801, i32 0, i32 1
  store i32 %794, i32* %802, align 4
  br label %803

803:                                              ; preds = %761, %755
  %804 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %805 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %804, i32 0, i32 4
  %806 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 8
  %808 = icmp ne i32 %807, 32
  br i1 %808, label %809, label %857

809:                                              ; preds = %803
  %810 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %811 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %810, i32 0, i32 3
  %812 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %811, i32 0, i32 0
  %813 = load i64, i64* %812, align 8
  %814 = icmp ne i64 %813, 0
  br i1 %814, label %815, label %857

815:                                              ; preds = %809
  %816 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %817 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %816, i32 0, i32 2
  %818 = load %struct.TYPE_10__*, %struct.TYPE_10__** %817, align 8
  %819 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %820 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %819, i32 0, i32 0
  %821 = load i64, i64* %820, align 8
  %822 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %818, i64 %821
  %823 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %822, i32 0, i32 3
  %824 = load i32, i32* %823, align 8
  %825 = call i32 @strcpy(i32 %824, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %826 = load i8*, i8** @codec, align 8
  %827 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %828 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %827, i32 0, i32 2
  %829 = load %struct.TYPE_10__*, %struct.TYPE_10__** %828, align 8
  %830 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %831 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %830, i32 0, i32 0
  %832 = load i64, i64* %831, align 8
  %833 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %829, i64 %832
  %834 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %833, i32 0, i32 2
  store i8* %826, i8** %834, align 8
  %835 = load i32, i32* @G729, align 4
  %836 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %837 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %836, i32 0, i32 2
  %838 = load %struct.TYPE_10__*, %struct.TYPE_10__** %837, align 8
  %839 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %840 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %839, i32 0, i32 0
  %841 = load i64, i64* %840, align 8
  %842 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %838, i64 %841
  %843 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %842, i32 0, i32 0
  store i32 %835, i32* %843, align 8
  %844 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %845 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %844, i32 0, i32 0
  %846 = load i64, i64* %845, align 8
  %847 = add i64 %846, 1
  store i64 %847, i64* %845, align 8
  %848 = trunc i64 %846 to i32
  %849 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %850 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %849, i32 0, i32 2
  %851 = load %struct.TYPE_10__*, %struct.TYPE_10__** %850, align 8
  %852 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %853 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %852, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %851, i64 %854
  %856 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %855, i32 0, i32 1
  store i32 %848, i32* %856, align 4
  br label %857

857:                                              ; preds = %815, %809, %803
  %858 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %859 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %858, i32 0, i32 4
  %860 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %859, i32 0, i32 0
  %861 = load i32, i32* %860, align 8
  %862 = icmp ne i32 %861, 32
  br i1 %862, label %863, label %911

863:                                              ; preds = %857
  %864 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %865 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %864, i32 0, i32 3
  %866 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %865, i32 0, i32 0
  %867 = load i64, i64* %866, align 8
  %868 = icmp ne i64 %867, 0
  br i1 %868, label %869, label %911

869:                                              ; preds = %863
  %870 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %871 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %870, i32 0, i32 2
  %872 = load %struct.TYPE_10__*, %struct.TYPE_10__** %871, align 8
  %873 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %874 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %873, i32 0, i32 0
  %875 = load i64, i64* %874, align 8
  %876 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %872, i64 %875
  %877 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %876, i32 0, i32 3
  %878 = load i32, i32* %877, align 8
  %879 = call i32 @strcpy(i32 %878, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %880 = load i8*, i8** @codec, align 8
  %881 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %882 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %881, i32 0, i32 2
  %883 = load %struct.TYPE_10__*, %struct.TYPE_10__** %882, align 8
  %884 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %885 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %884, i32 0, i32 0
  %886 = load i64, i64* %885, align 8
  %887 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %883, i64 %886
  %888 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %887, i32 0, i32 2
  store i8* %880, i8** %888, align 8
  %889 = load i32, i32* @G729B, align 4
  %890 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %891 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %890, i32 0, i32 2
  %892 = load %struct.TYPE_10__*, %struct.TYPE_10__** %891, align 8
  %893 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %894 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %893, i32 0, i32 0
  %895 = load i64, i64* %894, align 8
  %896 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %892, i64 %895
  %897 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %896, i32 0, i32 0
  store i32 %889, i32* %897, align 8
  %898 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %899 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %898, i32 0, i32 0
  %900 = load i64, i64* %899, align 8
  %901 = add i64 %900, 1
  store i64 %901, i64* %899, align 8
  %902 = trunc i64 %900 to i32
  %903 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %904 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %903, i32 0, i32 2
  %905 = load %struct.TYPE_10__*, %struct.TYPE_10__** %904, align 8
  %906 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %907 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %906, i32 0, i32 0
  %908 = load i64, i64* %907, align 8
  %909 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %905, i64 %908
  %910 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %909, i32 0, i32 1
  store i32 %902, i32* %910, align 4
  br label %911

911:                                              ; preds = %869, %863, %857
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
