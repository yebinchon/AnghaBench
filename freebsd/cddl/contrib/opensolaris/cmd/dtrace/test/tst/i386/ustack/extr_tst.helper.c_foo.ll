; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/i386/ustack/extr_tst.helper.c_foo.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/i386/ustack/extr_tst.helper.c_foo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.foo.instr = private unnamed_addr constant [12 x i32] [i32 85, i32 139, i32 236, i32 232, i32 0, i32 0, i32 0, i32 0, i32 139, i32 229, i32 93, i32 195], align 16
@baz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @foo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foo() #0 {
  %1 = alloca [12 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = bitcast [12 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([12 x i32]* @__const.foo.instr to i8*), i64 48, i1 false)
  %4 = call i32* @malloc(i32 48)
  store i32* %4, i32** %2, align 8
  %5 = load i64, i64* @baz, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 8
  %8 = ptrtoint i32* %7 to i64
  %9 = sub i64 %5, %8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds [12 x i32], [12 x i32]* %1, i64 0, i64 4
  store i32 %10, i32* %11, align 16
  %12 = getelementptr inbounds [12 x i32], [12 x i32]* %1, i64 0, i64 0
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @bcopy(i32* %12, i32* %13, i32 48)
  %15 = load i32*, i32** %2, align 8
  %16 = bitcast i32* %15 to i32 ()*
  %17 = call i32 %16()
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @free(i32* %18)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
