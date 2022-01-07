; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_siphash.h_sip24_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_siphash.h_sip24_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sipkey = type { i32 }

@sip24_valid.vectors = internal constant [64 x [8 x i8]] [[8 x i8] c"1\0E\0E\DDG\DBor", [8 x i8] c"\FDg\DC\93\C59\F8t", [8 x i8] c"ZO\A9\D9\09\80l\0D", [8 x i8] c"-~\FB\D7\96fg\85", [8 x i8] c"\B7\87q'\E0\94'\CF", [8 x i8] c"\8D\A6\99\CDdUv\18", [8 x i8] c"\CE\E3\FEXnF\C9\CB", [8 x i8] c"7\D1\01\8B\F5\00\02\AB", [8 x i8] c"b$\93\9Ay\F5\F5\93", [8 x i8] c"\B0\E4\A9\0B\DF\82\00\9E", [8 x i8] c"\F3\B9\DD\94\C5\BB]z", [8 x i8] c"\A7\ADk\22F/\B3\F4", [8 x i8] c"\FB\E5\0E\86\BC\8F\1Eu", [8 x i8] c"\90=\84\C0'V\EA\14", [8 x i8] c"\EE\F2z\8E\90\CA#\F7", [8 x i8] c"\E5E\BEIa\CA)\A1", [8 x i8] c"\DB\9B\C2W\7F\CC*?", [8 x i8] c"\94G\BE,\F5\E9\9Ai", [8 x i8] c"\9C\D3\8D\96\F0\B3\C1K", [8 x i8] c"\BDay\A7\1D\C9m\BB", [8 x i8] c"\98\EE\A2\1A\F2\\\D6\BE", [8 x i8] c"\C7g;.\B0\CB\F2\D0", [8 x i8] c"\88>\A3\E3\95gS\93", [8 x i8] c"\C8\CE\\\CD\8C\03\0C\A8", [8 x i8] c"\94\AFI\F6\C6P\AD\B8", [8 x i8] c"\EA\B8\85\8A\DE\92\E1\BC", [8 x i8] c"\F3\15\BB[\B85\D8\17", [8 x i8] c"\AD\CFk\07ca./", [8 x i8] c"\A5\C9\1D\A7\AC\AAM\DE", [8 x i8] c"qe\95\87fP\A2\A6", [8 x i8] c"(\EFI\\S\A3\87\AD", [8 x i8] c"B\C3A\D8\FA\92\D82", [8 x i8] c"\CE|\F2r/Q'q", [8 x i8] c"\E3xY\F9F#\F3\A7", [8 x i8] c"8\12\05\BB\1A\B0\E0\12", [8 x i8] c"\AE\97\A1\0F\D44\E0\15", [8 x i8] c"\B4\A3\15\08\BE\FFM1", [8 x i8] c"\819b)\F0\90y\02", [8 x i8] c"M\0C\F4\9E\E5\D4\DC\CA", [8 x i8] c"\\s3jv\D8\BF\9A", [8 x i8] c"\D0\A7\04Sk\A9>\0E", [8 x i8] c"\92YX\FC\D6B\0C\AD", [8 x i8] c"\A9\15\C2\9B\C8\06s\18", [8 x i8] c"\95+y\F3\BC\0A\A6\D4", [8 x i8] c"\F2\1D\F2\E4\1DE5\F9", [8 x i8] c"\87Wu\19\04\8FS\A9", [8 x i8] c"\10\A5l\F5\DF\CD\9A\DB", [8 x i8] c"\EBu\09\\\CD\98l\D0", [8 x i8] c"Q\A9\CB\9E\CB\A3\12\E6", [8 x i8] c"\96\AF\AD\FC,\E6f\C7", [8 x i8] c"r\FER\97ZCd\EE", [8 x i8] c"Z\16E\B2v\D5\92\A1", [8 x i8] c"\B2t\CB\8E\BF\87\87\0A", [8 x i8] c"o\9B\B4 =\E7\B3\81", [8 x i8] c"\EA\EC\B2\A3\0B\22\A8\7F", [8 x i8] c"\99$\A4<\C11W$", [8 x i8] c"\BD\83\8D:\AF\BF\8D\B7", [8 x i8] c"\0B\1A*2e\D5\1A\EA", [8 x i8] c"\13Py\A3#\1C\E6`", [8 x i8] c"\93+(F\E4\D7\06f", [8 x i8] c"\E1\91_\\\B1\EC\A4l", [8 x i8] c"\F3%\96\\\A1mb\9F", [8 x i8] c"W_\F2\8E`8\1B\E5", [8 x i8] c"rE\06\EBL2\8A\95"], align 16
@.str = private unnamed_addr constant [17 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sip24_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sip24_valid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca %struct.sipkey, align 4
  %4 = alloca i64, align 8
  %5 = call i32 @sip_tokey(%struct.sipkey* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %24, %0
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 64
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 %12
  store i8 %11, i8* %13, align 1
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @siphash24(i8* %14, i64 %15, %struct.sipkey* %3)
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds [64 x [8 x i8]], [64 x [8 x i8]]* @sip24_valid.vectors, i64 0, i64 %17
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %20 = call i64 @SIP_U8TO64_LE(i8* %19)
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %28

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %6

27:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @sip_tokey(%struct.sipkey*, i8*) #1

declare dso_local i64 @siphash24(i8*, i64, %struct.sipkey*) #1

declare dso_local i64 @SIP_U8TO64_LE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
