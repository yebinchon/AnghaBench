; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_elf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"gelf_getehdr failed: %s\00", align 1
@ELFCLASSNONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"gelf_getclass failed: %s\00", align 1
@ED_SHDR = common dso_local global i32 0, align 4
@ED_DYN = common dso_local global i32 0, align 4
@ED_REL = common dso_local global i32 0, align 4
@ED_GOT = common dso_local global i32 0, align 4
@ED_SYMTAB = common dso_local global i32 0, align 4
@ED_SYMVER = common dso_local global i32 0, align 4
@ED_NOTE = common dso_local global i32 0, align 4
@ED_HASH = common dso_local global i32 0, align 4
@ED_EHDR = common dso_local global i32 0, align 4
@ED_PHDR = common dso_local global i32 0, align 4
@ED_INTERP = common dso_local global i32 0, align 4
@ED_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_elf(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  %3 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %4 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %7 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %6, i32 0, i32 3
  %8 = call i32* @gelf_getehdr(i32 %5, i32* %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @elf_errmsg(i32 -1)
  %12 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %172

13:                                               ; preds = %1
  %14 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %15 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gelf_getclass(i32 %16)
  %18 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %19 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ELFCLASSNONE, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = call i32 @elf_errmsg(i32 -1)
  %24 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %172

25:                                               ; preds = %13
  %26 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %27 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ED_SHDR, align 4
  %30 = load i32, i32* @ED_DYN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ED_REL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ED_GOT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ED_SYMTAB, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ED_SYMVER, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ED_NOTE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ED_HASH, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %28, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %48 = call i32 @load_sections(%struct.elfdump* %47)
  br label %49

49:                                               ; preds = %46, %25
  %50 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %51 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ED_EHDR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %58 = call i32 @elf_print_ehdr(%struct.elfdump* %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %61 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ED_PHDR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %68 = call i32 @elf_print_phdr(%struct.elfdump* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %71 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ED_INTERP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %78 = call i32 @elf_print_interp(%struct.elfdump* %77)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %81 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ED_SHDR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %88 = call i32 @elf_print_shdr(%struct.elfdump* %87)
  br label %89

89:                                               ; preds = %86, %79
  %90 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %91 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ED_DYN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %98 = call i32 @elf_print_dynamic(%struct.elfdump* %97)
  br label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %101 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ED_REL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %108 = call i32 @elf_print_reloc(%struct.elfdump* %107)
  br label %109

109:                                              ; preds = %106, %99
  %110 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %111 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ED_GOT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %118 = call i32 @elf_print_got(%struct.elfdump* %117)
  br label %119

119:                                              ; preds = %116, %109
  %120 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %121 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ED_SYMTAB, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %128 = call i32 @elf_print_symtabs(%struct.elfdump* %127)
  br label %129

129:                                              ; preds = %126, %119
  %130 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %131 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ED_SYMVER, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %138 = call i32 @elf_print_symver(%struct.elfdump* %137)
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %141 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ED_NOTE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %148 = call i32 @elf_print_note(%struct.elfdump* %147)
  br label %149

149:                                              ; preds = %146, %139
  %150 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %151 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ED_HASH, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %158 = call i32 @elf_print_hash(%struct.elfdump* %157)
  br label %159

159:                                              ; preds = %156, %149
  %160 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %161 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @ED_CHECKSUM, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %168 = call i32 @elf_print_checksum(%struct.elfdump* %167)
  br label %169

169:                                              ; preds = %166, %159
  %170 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %171 = call i32 @unload_sections(%struct.elfdump* %170)
  br label %172

172:                                              ; preds = %169, %22, %10
  ret void
}

declare dso_local i32* @gelf_getehdr(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @gelf_getclass(i32) #1

declare dso_local i32 @load_sections(%struct.elfdump*) #1

declare dso_local i32 @elf_print_ehdr(%struct.elfdump*) #1

declare dso_local i32 @elf_print_phdr(%struct.elfdump*) #1

declare dso_local i32 @elf_print_interp(%struct.elfdump*) #1

declare dso_local i32 @elf_print_shdr(%struct.elfdump*) #1

declare dso_local i32 @elf_print_dynamic(%struct.elfdump*) #1

declare dso_local i32 @elf_print_reloc(%struct.elfdump*) #1

declare dso_local i32 @elf_print_got(%struct.elfdump*) #1

declare dso_local i32 @elf_print_symtabs(%struct.elfdump*) #1

declare dso_local i32 @elf_print_symver(%struct.elfdump*) #1

declare dso_local i32 @elf_print_note(%struct.elfdump*) #1

declare dso_local i32 @elf_print_hash(%struct.elfdump*) #1

declare dso_local i32 @elf_print_checksum(%struct.elfdump*) #1

declare dso_local i32 @unload_sections(%struct.elfdump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
