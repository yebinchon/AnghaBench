; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfmerge.c_copy_ctf_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfmerge.c_copy_ctf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_ctf_save_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No CTF data found in source file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".ctf\00", align 1
@tmpname = common dso_local global i32 0, align 4
@CTF_COMPRESS = common dso_local global i32 0, align 4
@CTF_SWAP_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't rename temp file %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @copy_ctf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ctf_data(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @read_ctf_save_cb, align 4
  %9 = call i64 @read_ctf(i8** %4, i32 1, i32* null, i32 %8, i32** %7, i32 1)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i8*, i8*, ...) @terminate(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @mktmpname(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* @tmpname, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @tmpname, align 4
  %20 = load i32, i32* @CTF_COMPRESS, align 4
  %21 = load i32, i32* @CTF_SWAP_BYTES, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @write_ctf(i32* %17, i8* %18, i32 %19, i32 %24)
  %26 = load i32, i32* @tmpname, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @rename(i32 %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %14
  %31 = load i32, i32* @tmpname, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, i8*, ...) @terminate(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %30, %14
  %37 = load i32, i32* @tmpname, align 4
  %38 = call i32 @free(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @tdata_free(i32* %39)
  ret void
}

declare dso_local i64 @read_ctf(i8**, i32, i32*, i32, i32**, i32) #1

declare dso_local i32 @terminate(i8*, i8*, ...) #1

declare dso_local i32 @mktmpname(i8*, i8*) #1

declare dso_local i32 @write_ctf(i32*, i8*, i32, i32) #1

declare dso_local i64 @rename(i32, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @tdata_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
