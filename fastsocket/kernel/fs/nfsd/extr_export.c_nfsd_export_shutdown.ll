; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_nfsd_export_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_nfsd_export_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"nfsd: shutting down export module.\0A\00", align 1
@svc_expkey_cache = common dso_local global i32 0, align 4
@svc_export_cache = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"nfsd: export shutdown complete.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_export_shutdown() #0 {
  %1 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @exp_writelock()
  %3 = call i32 @cache_unregister(i32* @svc_expkey_cache)
  %4 = call i32 @cache_unregister(i32* @svc_export_cache)
  %5 = call i32 (...) @svcauth_unix_purge()
  %6 = call i32 (...) @exp_writeunlock()
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @exp_writelock(...) #1

declare dso_local i32 @cache_unregister(i32*) #1

declare dso_local i32 @svcauth_unix_purge(...) #1

declare dso_local i32 @exp_writeunlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
