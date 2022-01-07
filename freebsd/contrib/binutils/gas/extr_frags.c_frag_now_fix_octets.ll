; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_now_fix_octets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_now_fix_octets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@abs_section_offset = common dso_local global i8* null, align 8
@frchain_now = common dso_local global %struct.TYPE_3__* null, align 8
@frag_now = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @frag_now_fix_octets() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @now_seg, align 8
  %3 = load i64, i64* @absolute_section, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i8*, i8** @abs_section_offset, align 8
  store i8* %6, i8** %1, align 8
  br label %18

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @frchain_now, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i64 @obstack_next_free(i32* %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frag_now, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  store i8* %17, i8** %1, align 8
  br label %18

18:                                               ; preds = %7, %5
  %19 = load i8*, i8** %1, align 8
  ret i8* %19
}

declare dso_local i64 @obstack_next_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
