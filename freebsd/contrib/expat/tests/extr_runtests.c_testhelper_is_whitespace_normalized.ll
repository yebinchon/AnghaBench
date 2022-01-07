; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_testhelper_is_whitespace_normalized.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_testhelper_is_whitespace_normalized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"abc def ghi\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" abc def ghi\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"abc  def ghi\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"abc def ghi \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"abc\09 def\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testhelper_is_whitespace_normalized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testhelper_is_whitespace_normalized() #0 {
  %1 = call i32 @XCS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @is_whitespace_normalized(i32 %1, i32 0)
  %3 = call i32 @assert(i32 %2)
  %4 = call i32 @XCS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @is_whitespace_normalized(i32 %4, i32 1)
  %6 = call i32 @assert(i32 %5)
  %7 = call i32 @XCS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @is_whitespace_normalized(i32 %7, i32 0)
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 @XCS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @is_whitespace_normalized(i32 %10, i32 1)
  %12 = call i32 @assert(i32 %11)
  %13 = call i32 @XCS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @is_whitespace_normalized(i32 %13, i32 0)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @XCS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @is_whitespace_normalized(i32 %19, i32 1)
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 @XCS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @is_whitespace_normalized(i32 %22, i32 0)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 @XCS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @is_whitespace_normalized(i32 %28, i32 1)
  %30 = call i32 @assert(i32 %29)
  %31 = call i32 @XCS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @is_whitespace_normalized(i32 %31, i32 0)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = call i32 @XCS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i32 @is_whitespace_normalized(i32 %37, i32 1)
  %39 = call i32 @assert(i32 %38)
  %40 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %41 = call i32 @is_whitespace_normalized(i32 %40, i32 0)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i32 @is_whitespace_normalized(i32 %46, i32 1)
  %48 = call i32 @assert(i32 %47)
  %49 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 @is_whitespace_normalized(i32 %49, i32 0)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 @is_whitespace_normalized(i32 %55, i32 1)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %62 = call i32 @is_whitespace_normalized(i32 %61, i32 0)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i32 @is_whitespace_normalized(i32 %67, i32 1)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %74 = call i32 @is_whitespace_normalized(i32 %73, i32 0)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = call i32 @XCS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %80 = call i32 @is_whitespace_normalized(i32 %79, i32 1)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = call i32 @XCS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %86 = call i32 @is_whitespace_normalized(i32 %85, i32 1)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_whitespace_normalized(i32, i32) #1

declare dso_local i32 @XCS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
