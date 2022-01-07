; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_getuuid.c_get_random_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_getuuid.c_get_random_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, %struct.timeval, [257 x i8] }
%struct.timeval = type { i32 }
%struct.timezone = type { i32 }

@NODE_LENGTH = common dso_local global i32 0, align 4
@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@NX_SINCE_BOOT = common dso_local global i32 0, align 4
@NX_USECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_random_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_random_info(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.anon, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @NODE_LENGTH, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = call i32 @apr_md5_init(i32* %5)
  %14 = call i32 (...) @getpid()
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  %17 = call i32 @gettimeofday(%struct.timeval* %16, %struct.timezone* null)
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 2
  %19 = getelementptr inbounds [257 x i8], [257 x i8]* %18, i64 0, i64 0
  %20 = call i32 @gethostname(i8* %19, i32 256)
  %21 = bitcast %struct.anon* %6 to i8*
  %22 = call i32 @apr_md5_update(i32* %5, i8* %21, i32 268)
  %23 = call i32 @apr_md5_final(i8* %12, i32* %5)
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @NODE_LENGTH, align 4
  %26 = call i32 @memcpy(i8* %24, i8* %12, i32 %25)
  %27 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %27)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @apr_md5_init(i32*) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @apr_md5_update(i32*, i8*, i32) #2

declare dso_local i32 @apr_md5_final(i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
