; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_environ.c_make_environ.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_environ.c_make_environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ = type { i32, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.environ* @make_environ() #0 {
  %1 = alloca %struct.environ*, align 8
  %2 = call i64 @xmalloc(i32 16)
  %3 = inttoptr i64 %2 to %struct.environ*
  store %struct.environ* %3, %struct.environ** %1, align 8
  %4 = load %struct.environ*, %struct.environ** %1, align 8
  %5 = getelementptr inbounds %struct.environ, %struct.environ* %4, i32 0, i32 0
  store i32 10, i32* %5, align 8
  %6 = load %struct.environ*, %struct.environ** %1, align 8
  %7 = getelementptr inbounds %struct.environ, %struct.environ* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call i64 @xmalloc(i32 %12)
  %14 = inttoptr i64 %13 to i8**
  %15 = load %struct.environ*, %struct.environ** %1, align 8
  %16 = getelementptr inbounds %struct.environ, %struct.environ* %15, i32 0, i32 1
  store i8** %14, i8*** %16, align 8
  %17 = load %struct.environ*, %struct.environ** %1, align 8
  %18 = getelementptr inbounds %struct.environ, %struct.environ* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* null, i8** %20, align 8
  %21 = load %struct.environ*, %struct.environ** %1, align 8
  ret %struct.environ* %21
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
