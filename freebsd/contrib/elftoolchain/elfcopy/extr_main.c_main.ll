; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ELF library initialization failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@ETF_ELF = common dso_local global i32 0, align 4
@ELFCLASSNONE = common dso_local global i32 0, align 4
@ELFDATANONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"elfcopy\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mcs\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"objcopy\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"program mode not known, defaulting to elfcopy\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.elfcopy*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @EV_CURRENT, align 4
  %8 = call i64 @elf_version(i32 %7)
  %9 = load i64, i64* @EV_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  %13 = call i32 @elf_errmsg(i32 -1)
  %14 = call i32 @errx(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = call %struct.elfcopy* @calloc(i32 1, i32 80)
  store %struct.elfcopy* %16, %struct.elfcopy** %6, align 8
  %17 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %18 = icmp eq %struct.elfcopy* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  %21 = call i32 @err(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @ETF_ELF, align 4
  %24 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %25 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 4
  %26 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %27 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %26, i32 0, i32 15
  store i32 %23, i32* %27, align 8
  %28 = load i32, i32* @ELFCLASSNONE, align 4
  %29 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %30 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %32 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %31, i32 0, i32 13
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* @ELFDATANONE, align 4
  %34 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %35 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 8
  %36 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %37 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %39 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %41 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %40, i32 0, i32 10
  store i64 0, i64* %41, align 8
  %42 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %43 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %42, i32 0, i32 9
  %44 = call i32 @STAILQ_INIT(i32* %43)
  %45 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %46 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %45, i32 0, i32 8
  %47 = call i32 @STAILQ_INIT(i32* %46)
  %48 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %49 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %48, i32 0, i32 7
  %50 = call i32 @STAILQ_INIT(i32* %49)
  %51 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %52 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %51, i32 0, i32 6
  %53 = call i32 @STAILQ_INIT(i32* %52)
  %54 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %55 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %54, i32 0, i32 5
  %56 = call i32 @STAILQ_INIT(i32* %55)
  %57 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %58 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %57, i32 0, i32 4
  %59 = call i32 @STAILQ_INIT(i32* %58)
  %60 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %61 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %60, i32 0, i32 3
  %62 = call i32 @TAILQ_INIT(i32* %61)
  %63 = call i8* (...) @ELFTC_GETPROGNAME()
  %64 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %65 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = icmp eq i8* %63, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %22
  %68 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %69 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %68, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %69, align 8
  br label %70

70:                                               ; preds = %67, %22
  %71 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %72 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strrcmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = call i32 @strip_main(%struct.elfcopy* %77, i32 %78, i8** %79)
  br label %112

81:                                               ; preds = %70
  %82 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %83 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strrcmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = call i32 @mcs_main(%struct.elfcopy* %88, i32 %89, i8** %90)
  br label %111

92:                                               ; preds = %81
  %93 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %94 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strrcmp(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %100 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strrcmp(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98, %92
  %107 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = call i32 @elfcopy_main(%struct.elfcopy* %107, i32 %108, i8** %109)
  br label %111

111:                                              ; preds = %106, %87
  br label %112

112:                                              ; preds = %111, %76
  %113 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %114 = call i32 @free_sec_add(%struct.elfcopy* %113)
  %115 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %116 = call i32 @free_sec_act(%struct.elfcopy* %115)
  %117 = load %struct.elfcopy*, %struct.elfcopy** %6, align 8
  %118 = call i32 @free(%struct.elfcopy* %117)
  %119 = load i32, i32* @EXIT_SUCCESS, align 4
  %120 = call i32 @exit(i32 %119) #3
  unreachable
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.elfcopy* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @ELFTC_GETPROGNAME(...) #1

declare dso_local i64 @strrcmp(i8*, i8*) #1

declare dso_local i32 @strip_main(%struct.elfcopy*, i32, i8**) #1

declare dso_local i32 @mcs_main(%struct.elfcopy*, i32, i8**) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @elfcopy_main(%struct.elfcopy*, i32, i8**) #1

declare dso_local i32 @free_sec_add(%struct.elfcopy*) #1

declare dso_local i32 @free_sec_act(%struct.elfcopy*) #1

declare dso_local i32 @free(%struct.elfcopy*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
