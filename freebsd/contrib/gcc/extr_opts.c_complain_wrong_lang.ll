; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_complain_wrong_lang.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_complain_wrong_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_option = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"command line option \22%s\22 is valid for %s but not for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cl_option*, i32)* @complain_wrong_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complain_wrong_lang(i8* %0, %struct.cl_option* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cl_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cl_option* %1, %struct.cl_option** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cl_option*, %struct.cl_option** %5, align 8
  %10 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @write_langs(i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @write_langs(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @warning(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @free(i8* %21)
  ret void
}

declare dso_local i8* @write_langs(i32) #1

declare dso_local i32 @warning(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
