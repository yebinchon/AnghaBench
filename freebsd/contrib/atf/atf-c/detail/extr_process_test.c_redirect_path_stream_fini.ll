; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_redirect_path_stream_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_redirect_path_stream_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redirect_path_stream = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @redirect_path_stream_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redirect_path_stream_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.redirect_path_stream*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.redirect_path_stream*
  store %struct.redirect_path_stream* %5, %struct.redirect_path_stream** %3, align 8
  %6 = load %struct.redirect_path_stream*, %struct.redirect_path_stream** %3, align 8
  %7 = getelementptr inbounds %struct.redirect_path_stream, %struct.redirect_path_stream* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @atf_process_stream_fini(i32* %8)
  %10 = load %struct.redirect_path_stream*, %struct.redirect_path_stream** %3, align 8
  %11 = getelementptr inbounds %struct.redirect_path_stream, %struct.redirect_path_stream* %10, i32 0, i32 1
  %12 = call i32 @atf_fs_path_fini(i32* %11)
  %13 = load %struct.redirect_path_stream*, %struct.redirect_path_stream** %3, align 8
  %14 = getelementptr inbounds %struct.redirect_path_stream, %struct.redirect_path_stream* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @check_file(i32 %16)
  ret void
}

declare dso_local i32 @atf_process_stream_fini(i32*) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

declare dso_local i32 @check_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
