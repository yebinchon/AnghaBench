; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_decode_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_decode_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ERROR (decoding): err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"  %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"  (unknown)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"RSA key (%lu bits)\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"EC key (curve = %d: %s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown key type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @decode_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_key(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = call i32 @br_skey_decoder_init(i32* %8)
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @br_skey_decoder_push(i32* %8, i8* %16, i64 %17)
  %19 = call i32 @br_skey_decoder_last_error(i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @find_error_name(i32 %26, i8** %12)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %33)
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  store i32 0, i32* %4, align 4
  br label %70

39:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  %40 = call i32 @br_skey_decoder_key_type(i32* %8)
  switch i32 %40, label %64 [
    i32 128, label %41
    i32 129, label %51
  ]

41:                                               ; preds = %39
  %42 = call %struct.TYPE_7__* @br_skey_decoder_get_rsa(i32* %8)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %13, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @print_rsa(%struct.TYPE_7__* %48, i32* %49)
  store i32 %50, i32* %10, align 4
  br label %68

51:                                               ; preds = %39
  %52 = call %struct.TYPE_8__* @br_skey_decoder_get_ec(i32* %8)
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %14, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ec_curve_name(i32 %58)
  %60 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %55, i8* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @print_ec(%struct.TYPE_8__* %61, i32* %62)
  store i32 %63, i32* %10, align 4
  br label %68

64:                                               ; preds = %39
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 @br_skey_decoder_key_type(i32* %8)
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %51, %41
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %38
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @br_skey_decoder_init(i32*) #1

declare dso_local i32 @br_skey_decoder_push(i32*, i8*, i64) #1

declare dso_local i32 @br_skey_decoder_last_error(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @find_error_name(i32, i8**) #1

declare dso_local i32 @br_skey_decoder_key_type(i32*) #1

declare dso_local %struct.TYPE_7__* @br_skey_decoder_get_rsa(i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @print_rsa(%struct.TYPE_7__*, i32*) #1

declare dso_local %struct.TYPE_8__* @br_skey_decoder_get_ec(i32*) #1

declare dso_local i8* @ec_curve_name(i32) #1

declare dso_local i32 @print_ec(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
