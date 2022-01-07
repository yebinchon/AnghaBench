; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_menu__xgettext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_menu__xgettext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { %struct.message*, i32 }

@message__list = common dso_local global %struct.message* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @menu__xgettext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu__xgettext() #0 {
  %1 = alloca %struct.message*, align 8
  %2 = load %struct.message*, %struct.message** @message__list, align 8
  store %struct.message* %2, %struct.message** %1, align 8
  br label %3

3:                                                ; preds = %16, %0
  %4 = load %struct.message*, %struct.message** %1, align 8
  %5 = icmp ne %struct.message* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load %struct.message*, %struct.message** %1, align 8
  %8 = getelementptr inbounds %struct.message, %struct.message* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @strlen(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ugt i64 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load %struct.message*, %struct.message** %1, align 8
  %15 = call i32 @message__print_gettext_msgid_msgstr(%struct.message* %14)
  br label %16

16:                                               ; preds = %13, %6
  %17 = load %struct.message*, %struct.message** %1, align 8
  %18 = getelementptr inbounds %struct.message, %struct.message* %17, i32 0, i32 0
  %19 = load %struct.message*, %struct.message** %18, align 8
  store %struct.message* %19, %struct.message** %1, align 8
  br label %3

20:                                               ; preds = %3
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @message__print_gettext_msgid_msgstr(%struct.message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
